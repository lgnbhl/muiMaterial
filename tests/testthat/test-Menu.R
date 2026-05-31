test_that("Menu() returns shiny.tag, correct name and value", {
  expect_true(inherits(Menu(), "shiny.tag"))
  expect_equal(react_name(Menu()), "Menu")
  expect_equal(react_props(Menu("Test"))[["children"]], "Test")
})
