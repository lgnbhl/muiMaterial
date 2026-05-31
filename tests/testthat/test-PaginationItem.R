test_that("PaginationItem() returns shiny.tag, correct name and value", {
  expect_true(inherits(PaginationItem(), "shiny.tag"))
  expect_equal(react_name(PaginationItem()), "PaginationItem")
  expect_equal(react_props(PaginationItem("Test"))[["children"]], "Test")
})
