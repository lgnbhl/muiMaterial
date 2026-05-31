test_that("GridLegacy() returns shiny.tag, correct name and value", {
  expect_true(inherits(GridLegacy(), "shiny.tag"))
  expect_equal(react_name(GridLegacy()), "GridLegacy")
  expect_equal(react_props(GridLegacy("Test"))[["children"]], "Test")
})
