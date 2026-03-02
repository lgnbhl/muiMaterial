test_that("MenuList() returns shiny.tag, correct name and value", {
  expect_true(inherits(MenuList(), "shiny.tag"))
  expect_equal(environment(MenuList()[["children"]][[2]])[["data"]][["name"]], "MenuList")
  expect_equal(environment(MenuList("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
