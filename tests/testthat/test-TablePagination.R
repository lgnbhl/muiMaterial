test_that("TablePagination() returns shiny.tag, correct name and value", {
  expect_true(inherits(TablePagination(), "shiny.tag"))
  expect_equal(react_name(TablePagination()), "TablePagination")
  expect_equal(react_props(TablePagination("Test"))[["children"]], "Test")
})
