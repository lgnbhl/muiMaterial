test_that("TimelineDot() returns shiny.tag, correct name and value", {
  expect_equal(class(TimelineDot()), "shiny.tag")
  expect_equal(environment(TimelineDot()[["children"]][[2]])[["data"]][["name"]], "TimelineDot")
  expect_equal(environment(TimelineDot("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
