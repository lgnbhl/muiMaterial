test_that("Table() returns shiny.tag, correct name and value", {
  expect_true(inherits(Table(), "shiny.tag"))
  expect_equal(react_name(Table()), "Table")
  expect_equal(react_props(Table("Test"))[["children"]], "Test")
})
