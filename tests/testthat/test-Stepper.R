test_that("Stepper() returns shiny.tag, correct name and value", {
  expect_equal(class(Stepper()), "shiny.tag")
  expect_equal(environment(Stepper()[["children"]][[2]])[["data"]][["name"]], "Stepper")
  expect_equal(environment(Stepper("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
