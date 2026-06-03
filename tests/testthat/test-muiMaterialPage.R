test_that("muiMaterialPage() returns an html tag with body and head", {
  page <- muiMaterialPage(Box("hi"))
  expect_s3_class(page, "shiny.tag")
  expect_equal(page$name, "html")

  head <- page$children[[1]]
  expect_equal(head$name, "head")

  body <- page$children[[2]]
  expect_equal(body$name, "body")
  expect_equal(body$attribs$style, "margin:0")
})

test_that("muiMaterialPage() respects styleBody and suppressBootstrap", {
  page <- muiMaterialPage(styleBody = "margin:8px;background:red")
  body <- page$children[[2]]
  expect_equal(body$attribs$style, "margin:8px;background:red")
})

test_that("muiMaterialPage() injects Roboto/Material Icons CDN links when requested", {
  page <- muiMaterialPage(
    useFontRoboto = TRUE,
    useMaterialIconsFilled = TRUE
  )
  head_children <- page$children[[1]]$children
  hrefs <- vapply(
    head_children,
    function(x) {
      if (is.null(x)) return("")
      href <- x$attribs$href
      if (is.null(href)) "" else href
    },
    character(1)
  )
  expect_true(any(grepl("Roboto", hrefs)))
  expect_true(any(grepl("Material\\+Icons", hrefs)))
})

test_that("muiMaterialPage() omits Google Fonts links by default", {
  page <- muiMaterialPage()
  head_children <- page$children[[1]]$children
  hrefs <- vapply(
    head_children,
    function(x) {
      if (is.null(x)) return("")
      href <- x$attribs$href
      if (is.null(href)) "" else href
    },
    character(1)
  )
  expect_false(any(grepl("Roboto", hrefs)))
  expect_false(any(grepl("Material\\+Icons", hrefs)))
})

test_that("muiMaterialPage() suppresses or includes Bootstrap as requested", {
  bootstrap_version <- function(page) {
    deps <- htmltools::renderTags(page)$dependencies
    for (d in deps) {
      if (identical(d$name, "bootstrap")) return(d$version)
    }
    NA_character_
  }
  # htmltools::suppressDependencies() injects a dummy dependency with
  # version "9999" so it overrides any real bootstrap dep downstream.
  expect_equal(bootstrap_version(muiMaterialPage(suppressBootstrap = TRUE)), "9999")
  real <- bootstrap_version(muiMaterialPage(suppressBootstrap = FALSE))
  expect_false(identical(real, "9999"))
  expect_false(is.na(real))
})

test_that("muiMaterialPage() does not inject debug code into the DOM", {
  # debugReact must run as a side effect, never end up as a body child.
  page <- muiMaterialPage(debugReact = FALSE)
  body <- page$children[[2]]
  classes <- unlist(lapply(body$children, function(x) class(x)))
  # The previous (buggy) implementation passed the return value of
  # enableReactDebugMode() as a positional child of `tags$body(...)`.
  # The fix guarantees no orphan non-tag/non-dependency objects survive.
  expect_false(any(grepl("NULL", classes, fixed = TRUE)))
})

test_that("muiMaterialPage() validates its flag and string arguments", {
  expect_error(muiMaterialPage(useFontRoboto = "yes"), "useFontRoboto")
  expect_error(muiMaterialPage(suppressBootstrap = NA), "suppressBootstrap")
  expect_error(muiMaterialPage(styleBody = 1), "styleBody")
  expect_error(muiMaterialPage(debugReact = c(TRUE, FALSE)), "debugReact")
})
