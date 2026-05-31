test_that("Grid() returns shiny.tag, correct name and value", {
  expect_true(inherits(Grid(), "shiny.tag"))
  expect_equal(react_name(Grid()), "Grid")
  expect_equal(react_props(Grid("Test"))[["children"]], "Test")
})
