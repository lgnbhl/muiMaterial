test_that("ListItemAvatar() returns shiny.tag, correct name and value", {
  expect_true(inherits(ListItemAvatar(), "shiny.tag"))
  expect_equal(react_name(ListItemAvatar()), "ListItemAvatar")
  expect_equal(react_props(ListItemAvatar("Test"))[["children"]], "Test")
})
