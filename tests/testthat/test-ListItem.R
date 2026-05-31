test_that("ListItem() returns shiny.tag, correct name and value", {
  expect_true(inherits(ListItem(), "shiny.tag"))
  expect_equal(react_name(ListItem()), "ListItem")
  expect_equal(react_props(ListItem("Test"))[["children"]], "Test")
})
