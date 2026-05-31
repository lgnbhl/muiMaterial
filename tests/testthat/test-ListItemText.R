test_that("ListItemText() returns shiny.tag, correct name and value", {
  expect_true(inherits(ListItemText(), "shiny.tag"))
  expect_equal(react_name(ListItemText()), "ListItemText")
  expect_equal(react_props(ListItemText("Test"))[["children"]], "Test")
})
