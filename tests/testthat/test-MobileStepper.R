test_that("MobileStepper() returns shiny.tag, correct name and value", {
  expect_equal(class(MobileStepper()), "shiny.tag")
  expect_equal(environment(MobileStepper()[["children"]][[2]])[["data"]][["name"]], "MobileStepper")
  expect_equal(environment(MobileStepper("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
