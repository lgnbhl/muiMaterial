test_that("MenuItem() returns shiny.tag, correct name and value", {
  expect_true(inherits(MenuItem(), "shiny.tag"))
  expect_equal(react_name(MenuItem()), "MenuItem")
  expect_equal(react_props(MenuItem("Test"))[["children"]], "Test")
})
