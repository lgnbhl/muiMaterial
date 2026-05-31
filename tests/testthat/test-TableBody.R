test_that("TableBody() returns shiny.tag, correct name and value", {
  expect_true(inherits(TableBody(), "shiny.tag"))
  expect_equal(react_name(TableBody()), "TableBody")
  expect_equal(react_props(TableBody("Test"))[["children"]], "Test")
})
