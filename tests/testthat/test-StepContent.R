test_that("StepContent() returns shiny.tag, correct name and value", {
  expect_equal(class(StepContent()), "shiny.tag")
  expect_equal(environment(StepContent()[["children"]][[2]])[["data"]][["name"]], "StepContent")
  expect_equal(environment(StepContent("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
