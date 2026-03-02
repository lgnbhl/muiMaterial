test_that("Modal() returns shiny.tag, correct name and value", {
  expect_true(inherits(Modal(), "shiny.tag"))
  expect_equal(environment(Modal()[["children"]][[2]])[["data"]][["name"]], "Modal")
  expect_equal(environment(Modal("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
