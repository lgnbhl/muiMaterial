test_that("IconButton() returns shiny.tag, correct name and value", {
  expect_equal(class(IconButton()), "shiny.tag")
  expect_equal(environment(IconButton()[["children"]][[2]])[["data"]][["name"]], "IconButton")
  expect_equal(environment(IconButton("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
