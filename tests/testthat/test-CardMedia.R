test_that("CardMedia() returns shiny.tag, correct name and value", {
  expect_equal(class(CardMedia()), "shiny.tag")
  expect_equal(environment(CardMedia()[["children"]][[2]])[["data"]][["name"]], "CardMedia")
  expect_equal(environment(CardMedia("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
