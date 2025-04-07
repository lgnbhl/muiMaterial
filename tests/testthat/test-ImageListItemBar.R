test_that("ImageListItemBar() returns shiny.tag, correct name and value", {
  expect_equal(class(ImageListItemBar()), "shiny.tag")
  expect_equal(environment(ImageListItemBar()[["children"]][[2]])[["data"]][["name"]], "ImageListItemBar")
  expect_equal(environment(ImageListItemBar("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
