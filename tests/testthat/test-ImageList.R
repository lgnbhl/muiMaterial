test_that("ImageList() returns shiny.tag, correct name and value", {
  expect_equal(class(ImageList()), "shiny.tag")
  expect_equal(environment(ImageList()[["children"]][[2]])[["data"]][["name"]], "ImageList")
  expect_equal(environment(ImageList("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
