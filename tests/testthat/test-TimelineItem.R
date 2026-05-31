test_that("TimelineItem() returns shiny.tag, correct name and value", {
  expect_true(inherits(TimelineItem(), "shiny.tag"))
  expect_equal(react_name(TimelineItem()), "TimelineItem")
  expect_equal(react_props(TimelineItem("Test"))[["children"]], "Test")
})
