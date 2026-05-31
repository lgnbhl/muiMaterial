test_that("TableContainer() returns shiny.tag, correct name and value", {
  expect_true(inherits(TableContainer(), "shiny.tag"))
  expect_equal(react_name(TableContainer()), "TableContainer")
  expect_equal(react_props(TableContainer("Test"))[["children"]], "Test")
})
