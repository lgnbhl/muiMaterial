test_that("StepLabel() returns shiny.tag, correct name and value", {
  expect_equal(class(StepLabel()), "shiny.tag")
  expect_equal(environment(StepLabel()[["children"]][[2]])[["data"]][["name"]], "StepLabel")
  expect_equal(environment(StepLabel("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
