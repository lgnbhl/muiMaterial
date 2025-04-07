test_that("CardContent() returns shiny.tag, correct name and value", {
  expect_equal(class(CardContent()), "shiny.tag")
  expect_equal(environment(CardContent()[["children"]][[2]])[["data"]][["name"]], "CardContent")
  expect_equal(environment(CardContent("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
