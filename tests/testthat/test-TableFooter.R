test_that("TableFooter() returns shiny.tag, correct name and value", {
  expect_true(inherits(TableFooter(), "shiny.tag"))
  expect_equal(react_name(TableFooter()), "TableFooter")
  expect_equal(react_props(TableFooter("Test"))[["children"]], "Test")
})
