test_that("StepIcon() returns shiny.tag, correct name and value", {
  expect_equal(class(StepIcon()), "shiny.tag")
  expect_equal(environment(StepIcon()[["children"]][[2]])[["data"]][["name"]], "StepIcon")
  expect_equal(environment(StepIcon("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
