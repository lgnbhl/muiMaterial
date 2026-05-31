test_that("FilledInput() returns shiny.tag, correct name and value", {
  expect_true(inherits(FilledInput(), "shiny.tag"))
  expect_equal(react_name(FilledInput()), "FilledInput")
  expect_equal(react_props(FilledInput("Test"))[["children"]], "Test")
})
