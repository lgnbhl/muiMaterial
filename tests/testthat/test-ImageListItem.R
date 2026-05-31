test_that("ImageListItem() returns shiny.tag, correct name and value", {
  expect_true(inherits(ImageListItem(), "shiny.tag"))
  expect_equal(react_name(ImageListItem()), "ImageListItem")
  expect_equal(react_props(ImageListItem("Test"))[["children"]], "Test")
})
