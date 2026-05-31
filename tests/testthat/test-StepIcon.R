test_that("StepIcon() returns shiny.tag, correct name and value", {
  expect_true(inherits(StepIcon(), "shiny.tag"))
  expect_equal(react_name(StepIcon()), "StepIcon")
  expect_equal(react_props(StepIcon("Test"))[["children"]], "Test")
})
