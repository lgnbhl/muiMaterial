test_that("SwipeableDrawer() returns shiny.tag, correct name and value", {
  expect_true(inherits(SwipeableDrawer(), "shiny.tag"))
  expect_equal(react_name(SwipeableDrawer()), "SwipeableDrawer")
  expect_equal(react_props(SwipeableDrawer("Test"))[["children"]], "Test")
})
