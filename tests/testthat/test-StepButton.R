test_that("StepButton() returns shiny.tag, correct name and value", {
  expect_equal(class(StepButton()), "shiny.tag")
  expect_equal(environment(StepButton()[["children"]][[2]])[["data"]][["name"]], "StepButton")
  expect_equal(environment(StepButton("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
