test_that("StepConnector() returns shiny.tag, correct name and value", {
  expect_equal(class(StepConnector()), "shiny.tag")
  expect_equal(environment(StepConnector()[["children"]][[2]])[["data"]][["name"]], "StepConnector")
  expect_equal(environment(StepConnector("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
