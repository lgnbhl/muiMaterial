test_that("TableCell() returns shiny.tag, correct name and value", {
  expect_true(inherits(TableCell(), "shiny.tag"))
  expect_equal(react_name(TableCell()), "TableCell")
  expect_equal(react_props(TableCell("Test"))[["children"]], "Test")
})
