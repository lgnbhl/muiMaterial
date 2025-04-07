test_that("OutlinedInput() returns shiny.tag, correct name and value", {
  expect_equal(class(OutlinedInput()), "shiny.tag")
  expect_equal(environment(OutlinedInput()[["children"]][[2]])[["data"]][["name"]], "OutlinedInput")
  expect_equal(environment(OutlinedInput("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
