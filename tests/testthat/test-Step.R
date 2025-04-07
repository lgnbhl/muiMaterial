test_that("Step() returns shiny.tag, correct name and value", {
  expect_equal(class(Step()), "shiny.tag")
  expect_equal(environment(Step()[["children"]][[2]])[["data"]][["name"]], "Step")
  expect_equal(environment(Step("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
