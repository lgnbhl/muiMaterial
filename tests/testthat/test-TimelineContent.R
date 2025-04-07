test_that("TimelineContent() returns shiny.tag, correct name and value", {
  expect_equal(class(TimelineContent()), "shiny.tag")
  expect_equal(environment(TimelineContent()[["children"]][[2]])[["data"]][["name"]], "TimelineContent")
  expect_equal(environment(TimelineContent("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
