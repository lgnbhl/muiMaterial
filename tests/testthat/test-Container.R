test_that("Container() returns shiny.tag, correct name and value", {
  expect_true(inherits(Container(), "shiny.tag"))
  expect_equal(react_name(Container()), "Container")
  expect_equal(react_props(Container("Test"))[["children"]], "Test")
})
