test_that("CssBaseline() returns shiny.tag, correct name and value", {
  expect_true(inherits(CssBaseline(), "shiny.tag"))
  expect_equal(react_name(CssBaseline()), "CssBaseline")
  expect_equal(react_props(CssBaseline("Test"))[["children"]], "Test")
})
