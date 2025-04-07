test_that("SwipeableDrawer() returns shiny.tag, correct name and value", {
  expect_equal(class(SwipeableDrawer()), "shiny.tag")
  expect_equal(environment(SwipeableDrawer()[["children"]][[2]])[["data"]][["name"]], "SwipeableDrawer")
  expect_equal(environment(SwipeableDrawer("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
