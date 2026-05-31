test_that("Select() returns shiny.tag, correct name and value", {
  expect_true(inherits(Select(), "shiny.tag"))
  expect_equal(react_name(Select()), "Select")
  expect_equal(react_props(Select("Test"))[["children"]], "Test")
})
