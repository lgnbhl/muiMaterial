test_that("AppBar() returns shiny.tag, correct name and value", {
  expect_true(inherits(AppBar(), "shiny.tag"))
  expect_equal(react_name(AppBar()), "AppBar")
  expect_equal(react_props(AppBar("Test"))[["children"]], "Test")
})
