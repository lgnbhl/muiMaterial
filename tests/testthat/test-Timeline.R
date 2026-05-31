test_that("Timeline() returns shiny.tag, correct name and value", {
  expect_true(inherits(Timeline(), "shiny.tag"))
  expect_equal(react_name(Timeline()), "Timeline")
  expect_equal(react_props(Timeline("Test"))[["children"]], "Test")
})
