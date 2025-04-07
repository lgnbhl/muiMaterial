test_that("Chip() returns shiny.tag, correct name and value", {
  expect_equal(class(Chip()), "shiny.tag")
  expect_equal(environment(Chip()[["children"]][[2]])[["data"]][["name"]], "Chip")
  expect_equal(environment(Chip("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
