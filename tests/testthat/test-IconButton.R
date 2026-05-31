test_that("IconButton() returns shiny.tag, correct name and value", {
  expect_true(inherits(IconButton(), "shiny.tag"))
  expect_equal(react_name(IconButton()), "IconButton")
  expect_equal(react_props(IconButton("Test"))[["children"]], "Test")
})
