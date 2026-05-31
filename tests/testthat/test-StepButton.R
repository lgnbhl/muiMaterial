test_that("StepButton() returns shiny.tag, correct name and value", {
  expect_true(inherits(StepButton(), "shiny.tag"))
  expect_equal(react_name(StepButton()), "StepButton")
  expect_equal(react_props(StepButton("Test"))[["children"]], "Test")
})
