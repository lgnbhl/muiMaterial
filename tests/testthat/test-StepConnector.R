test_that("StepConnector() returns shiny.tag, correct name and value", {
  expect_true(inherits(StepConnector(), "shiny.tag"))
  expect_equal(react_name(StepConnector()), "StepConnector")
  expect_equal(react_props(StepConnector("Test"))[["children"]], "Test")
})
