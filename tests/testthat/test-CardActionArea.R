test_that("CardActionArea() returns shiny.tag, correct name and value", {
  expect_equal(class(CardActionArea()), "shiny.tag")
  expect_equal(environment(CardActionArea()[["children"]][[2]])[["data"]][["name"]], "CardActionArea")
  expect_equal(environment(CardActionArea("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
