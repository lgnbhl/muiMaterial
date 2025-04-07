test_that("FilledInput() returns shiny.tag, correct name and value", {
  expect_equal(class(FilledInput()), "shiny.tag")
  expect_equal(environment(FilledInput()[["children"]][[2]])[["data"]][["name"]], "FilledInput")
  expect_equal(environment(FilledInput("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
