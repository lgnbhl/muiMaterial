test_that("StepContent() returns shiny.tag, correct name and value", {
  expect_true(inherits(StepContent(), "shiny.tag"))
  expect_equal(react_name(StepContent()), "StepContent")
  expect_equal(react_props(StepContent("Test"))[["children"]], "Test")
})
