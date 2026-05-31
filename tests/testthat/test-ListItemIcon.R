test_that("ListItemIcon() returns shiny.tag, correct name and value", {
  expect_true(inherits(ListItemIcon(), "shiny.tag"))
  expect_equal(react_name(ListItemIcon()), "ListItemIcon")
  expect_equal(react_props(ListItemIcon("Test"))[["children"]], "Test")
})
