test_that("PigmentStack() returns shiny.tag, correct name and value", {
  expect_equal(class(PigmentStack()), "shiny.tag")
  expect_equal(environment(PigmentStack()[["children"]][[2]])[["data"]][["name"]], "PigmentStack")
  expect_equal(environment(PigmentStack("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
