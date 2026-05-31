test_that("TimelineContent() returns shiny.tag, correct name and value", {
  expect_true(inherits(TimelineContent(), "shiny.tag"))
  expect_equal(react_name(TimelineContent()), "TimelineContent")
  expect_equal(react_props(TimelineContent("Test"))[["children"]], "Test")
})
