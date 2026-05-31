test_that("StepLabel() returns shiny.tag, correct name and value", {
  expect_true(inherits(StepLabel(), "shiny.tag"))
  expect_equal(react_name(StepLabel()), "StepLabel")
  expect_equal(react_props(StepLabel("Test"))[["children"]], "Test")
})
