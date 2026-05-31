test_that("ListSubheader() returns shiny.tag, correct name and value", {
  expect_true(inherits(ListSubheader(), "shiny.tag"))
  expect_equal(react_name(ListSubheader()), "ListSubheader")
  expect_equal(react_props(ListSubheader("Test"))[["children"]], "Test")
})
