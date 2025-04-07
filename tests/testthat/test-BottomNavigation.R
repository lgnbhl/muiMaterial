test_that("BottomNavigation() returns shiny.tag, correct name and value", {
  expect_equal(class(BottomNavigation()), "shiny.tag")
  expect_equal(environment(BottomNavigation()[["children"]][[2]])[["data"]][["name"]], "BottomNavigation")
  expect_equal(environment(BottomNavigation("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
