test_that("TableSortLabel() returns shiny.tag, correct name and value", {
  expect_true(inherits(TableSortLabel(), "shiny.tag"))
  expect_equal(react_name(TableSortLabel()), "TableSortLabel")
  expect_equal(react_props(TableSortLabel("Test"))[["children"]], "Test")
})
