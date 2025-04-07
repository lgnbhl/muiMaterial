test_that("CardActions() returns shiny.tag, correct name and value", {
  expect_equal(class(CardActions()), "shiny.tag")
  expect_equal(environment(CardActions()[["children"]][[2]])[["data"]][["name"]], "CardActions")
  expect_equal(environment(CardActions("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
