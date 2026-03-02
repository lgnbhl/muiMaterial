test_that("TimelineItem() returns shiny.tag, correct name and value", {
  expect_true(inherits(TimelineItem(), "shiny.tag"))
  expect_equal(environment(TimelineItem()[["children"]][[2]])[["data"]][["name"]], "TimelineItem")
  expect_equal(environment(TimelineItem("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
