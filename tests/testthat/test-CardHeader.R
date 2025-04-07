test_that("CardHeader() returns shiny.tag, correct name and value", {
  expect_equal(class(CardHeader()), "shiny.tag")
  expect_equal(environment(CardHeader()[["children"]][[2]])[["data"]][["name"]], "CardHeader")
  expect_equal(environment(CardHeader("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
