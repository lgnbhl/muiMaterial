test_that("Pagination() returns shiny.tag, correct name and value", {
  expect_true(inherits(Pagination(), "shiny.tag"))
  expect_equal(react_name(Pagination()), "Pagination")
  expect_equal(react_props(Pagination("Test"))[["children"]], "Test")
})
