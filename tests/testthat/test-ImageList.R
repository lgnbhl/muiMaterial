test_that("ImageList() returns shiny.tag, correct name and value", {
  expect_true(inherits(ImageList(), "shiny.tag"))
  expect_equal(react_name(ImageList()), "ImageList")
  expect_equal(react_props(ImageList("Test"))[["children"]], "Test")
})
