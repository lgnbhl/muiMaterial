test_that("GlobalStyles() returns shiny.tag, correct name and value", {
  expect_true(inherits(GlobalStyles(), "shiny.tag"))
  expect_equal(react_name(GlobalStyles()), "GlobalStyles")
  expect_equal(react_props(GlobalStyles("Test"))[["children"]], "Test")
})
