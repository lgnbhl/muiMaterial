test_that("Timeline() returns shiny.tag, correct name and value", {
  expect_equal(class(Timeline()), "shiny.tag")
  expect_equal(environment(Timeline()[["children"]][[2]])[["data"]][["name"]], "Timeline")
  expect_equal(environment(Timeline("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
