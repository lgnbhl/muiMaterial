test_that("BottomNavigation() returns shiny.tag, correct name and value", {
  expect_true(inherits(BottomNavigation(), "shiny.tag"))
  expect_equal(react_name(BottomNavigation()), "BottomNavigation")
  expect_equal(react_props(BottomNavigation("Test"))[["children"]], "Test")
})
