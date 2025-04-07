test_that("Alert() returns shiny.tag, correct name and value", {
  expect_equal(class(Alert()), "shiny.tag")
  expect_equal(environment(Alert()[["children"]][[2]])[["data"]][["name"]], "Alert")
  expect_equal(environment(Alert("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
