test_that("ImageListItemBar() returns shiny.tag, correct name and value", {
  expect_true(inherits(ImageListItemBar(), "shiny.tag"))
  expect_equal(react_name(ImageListItemBar()), "ImageListItemBar")
  expect_equal(react_props(ImageListItemBar("Test"))[["children"]], "Test")
})
