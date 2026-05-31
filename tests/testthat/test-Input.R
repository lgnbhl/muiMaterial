test_that("Input() returns shiny.tag, correct name and value", {
  expect_true(inherits(Input(), "shiny.tag"))
  expect_equal(react_name(Input()), "Input")
  expect_equal(react_props(Input("Test"))[["children"]], "Test")
})
