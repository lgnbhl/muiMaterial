test_that("Stack() returns shiny.tag, correct name and value", {
  expect_equal(class(Stack()), "shiny.tag")
  expect_equal(environment(Stack()[["children"]][[2]])[["data"]][["name"]], "Stack")
  expect_equal(environment(Stack("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
