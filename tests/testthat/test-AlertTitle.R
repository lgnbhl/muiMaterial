test_that("AlertTitle() returns shiny.tag, correct name and value", {
  expect_equal(class(AlertTitle()), "shiny.tag")
  expect_equal(environment(AlertTitle()[["children"]][[2]])[["data"]][["name"]], "AlertTitle")
  expect_equal(environment(AlertTitle("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
