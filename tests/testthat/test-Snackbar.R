test_that("Snackbar() returns shiny.tag, correct name and value", {
  expect_true(inherits(Snackbar(), "shiny.tag"))
  expect_equal(environment(Snackbar()[["children"]][[2]])[["data"]][["name"]], "Snackbar")
  expect_equal(environment(Snackbar("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
