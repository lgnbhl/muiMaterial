test_that("ListItemButton() returns shiny.tag, correct name and value", {
  expect_true(inherits(ListItemButton(), "shiny.tag"))
  expect_equal(react_name(ListItemButton()), "ListItemButton")
  expect_equal(react_props(ListItemButton("Test"))[["children"]], "Test")
})
