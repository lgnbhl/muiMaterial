test_that("MenuList() returns shiny.tag, correct name and value", {
  expect_true(inherits(MenuList(), "shiny.tag"))
  expect_equal(react_name(MenuList()), "MenuList")
  expect_equal(react_props(MenuList("Test"))[["children"]], "Test")
})
