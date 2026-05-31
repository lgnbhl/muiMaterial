test_that("TableRow() returns shiny.tag, correct name and value", {
  expect_true(inherits(TableRow(), "shiny.tag"))
  expect_equal(react_name(TableRow()), "TableRow")
  expect_equal(react_props(TableRow("Test"))[["children"]], "Test")
})
