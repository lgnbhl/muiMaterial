# muiMaterialPage() returns a browsable tagList whose head content
# (meta tags, font links, the body style rule) lives in a tags$head() that
# htmltools/Shiny hoist into the document head at render time. The tests
# therefore assert against htmltools::renderTags(): `$head` holds the hoisted
# head content, `$html` the page body.

test_that("muiMaterialPage() returns a tagList with hoisted head content", {
  page <- muiMaterialPage(Box("hi"))
  expect_s3_class(page, "shiny.tag.list")

  rendered <- htmltools::renderTags(page)
  expect_match(as.character(rendered$head), "body\\{margin:0\\}")
  expect_match(as.character(rendered$head), "viewport")
})

test_that("muiMaterialPage() respects styleBody", {
  page <- muiMaterialPage(styleBody = "margin:8px;background:red")
  rendered <- htmltools::renderTags(page)
  expect_match(
    as.character(rendered$head),
    "body\\{margin:8px;background:red\\}"
  )
})

test_that("muiMaterialPage() injects Roboto/Material Icons CDN links when requested", {
  page <- muiMaterialPage(
    useFontRoboto = TRUE,
    useMaterialIconsFilled = TRUE
  )
  head <- as.character(htmltools::renderTags(page)$head)
  expect_match(head, "Roboto")
  expect_match(head, "Material\\+Icons")
})

test_that("muiMaterialPage() omits Google Fonts links by default", {
  page <- muiMaterialPage()
  head <- as.character(htmltools::renderTags(page)$head)
  expect_no_match(head, "Roboto")
  expect_no_match(head, "Material\\+Icons")
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
  # debugReact must run as a side effect, never end up as a page child.
  page <- muiMaterialPage(debugReact = FALSE)
  classes <- unlist(lapply(page, class))
  # The previous (buggy) implementation passed the return value of
  # enableReactDebugMode() as a positional child of the page.
  # The fix guarantees no orphan non-tag/non-dependency objects survive.
  expect_false(any(grepl("NULL", classes, fixed = TRUE)))
})

test_that("muiMaterialPage() validates its flag and string arguments", {
  expect_error(muiMaterialPage(useFontRoboto = "yes"), "useFontRoboto")
  expect_error(muiMaterialPage(suppressBootstrap = NA), "suppressBootstrap")
  expect_error(muiMaterialPage(styleBody = 1), "styleBody")
  expect_error(muiMaterialPage(debugReact = c(TRUE, FALSE)), "debugReact")
})
