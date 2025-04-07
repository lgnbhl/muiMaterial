test_that("ImageListItem() returns shiny.tag, correct name and value", {
  expect_equal(class(ImageListItem()), "shiny.tag")
  expect_equal(environment(ImageListItem()[["children"]][[2]])[["data"]][["name"]], "ImageListItem")
  expect_equal(environment(ImageListItem("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
