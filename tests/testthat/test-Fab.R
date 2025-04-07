test_that("Fab() returns shiny.tag, correct name and value", {
  expect_equal(class(Fab()), "shiny.tag")
  expect_equal(environment(Fab()[["children"]][[2]])[["data"]][["name"]], "Fab")
  expect_equal(environment(Fab("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
