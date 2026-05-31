test_that("ThemeProvider() returns a shiny.tag with the muiMaterial class", {
  tag <- ThemeProvider(theme = list(palette = list(mode = "dark")))
  expect_true(inherits(tag, "shiny.tag"))
  expect_true(inherits(tag, "muiMaterial"))
})

test_that("ThemeProvider() wraps the muiMaterial-namespaced ThemeProvider", {
  tag <- ThemeProvider(theme = list())
  inner_name <- react_name(tag)
  expect_equal(inner_name, "ThemeProvider")
})

test_that("ThemeProvider() forwards `theme` and children through props", {
  theme <- list(palette = list(mode = "dark", primary = list(main = "#90caf9")))
  tag <- ThemeProvider(theme = theme, Box("inside"))
  props <- react_data(tag)[["props"]]
  expect_false(is.null(props))
  # The theme list should round-trip through asProps() unchanged.
  # asProps() wraps each prop with its own ReactData envelope.
  expect_equal(props$value$theme$value$palette$mode, "dark")
  expect_equal(props$value$theme$value$palette$primary$main, "#90caf9")
})

test_that("ThemeProvider() accepts an empty theme", {
  expect_silent(ThemeProvider(theme = list()))
})
