test_that("DialogActions() returns shiny.tag, correct name and value", {
  expect_equal(class(DialogActions()), "shiny.tag")
  expect_equal(environment(DialogActions()[["children"]][[2]])[["data"]][["name"]], "DialogActions")
  expect_equal(environment(DialogActions("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
