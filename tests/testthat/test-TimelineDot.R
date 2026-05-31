test_that("TimelineDot() returns shiny.tag, correct name and value", {
  expect_true(inherits(TimelineDot(), "shiny.tag"))
  expect_equal(react_name(TimelineDot()), "TimelineDot")
  expect_equal(react_props(TimelineDot("Test"))[["children"]], "Test")
})
