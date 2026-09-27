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

# The Google Fonts links are HTML dependencies (not tags$head() children), so
# they are asserted against the rendered dependencies.
renderedDependencies <- function(page) {
  as.character(htmltools::renderDependencies(htmltools::renderTags(page)$dependencies))
}

test_that("muiMaterialPage() injects Roboto/Material Icons CDN links when requested", {
  page <- muiMaterialPage(
    useFontRoboto = TRUE,
    useMaterialIconsFilled = TRUE
  )
  deps <- renderedDependencies(page)
  expect_match(deps, "Roboto")
  expect_match(deps, "Material\\+Icons")
  expect_match(deps, "preconnect")
})

test_that("muiMaterialPage() omits Google Fonts links by default", {
  deps <- renderedDependencies(muiMaterialPage())
  expect_no_match(deps, "Roboto")
  expect_no_match(deps, "Material\\+Icons")
  expect_no_match(deps, "preconnect")
})

test_that("muiMaterialPage() font links survive knitr (R Markdown / Quarto)", {
  # knitr drops tags$head() content but keeps HTML dependencies as knit_meta.
  printed <- knitr::knit_print(muiMaterialPage(useMaterialIconsFilled = TRUE))
  heads <- vapply(
    Filter(function(d) inherits(d, "html_dependency"), attr(printed, "knit_meta")),
    function(d) paste(d$head, collapse = ""),
    character(1)
  )
  expect_true(any(grepl("Material+Icons", heads, fixed = TRUE)))
})

test_that("muiMaterialPage() font dependencies are disk-based", {
  # Quarto and non-self-contained R Markdown copy dependencies into a lib
  # folder and fail on dependencies that only have an href src.
  deps <- htmltools::renderTags(muiMaterialPage(useFontRoboto = TRUE))$dependencies
  fontDeps <- Filter(function(d) startsWith(d$name, "muiMaterial-"), deps)
  expect_gt(length(fontDeps), 0)
  for (d in fontDeps) {
    expect_false(is.null(d$src$file), info = d$name)
    expect_true(dir.exists(d$src$file), info = d$name)
  }
})

test_that("muiMaterialPage() de-duplicates font links across pages", {
  page <- htmltools::tagList(
    muiMaterialPage(useMaterialIconsFilled = TRUE),
    muiMaterialPage(useMaterialIconsFilled = TRUE)
  )
  deps <- renderedDependencies(page)
  expect_length(gregexpr("icon?family=Material+Icons", deps, fixed = TRUE)[[1]], 1)
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
