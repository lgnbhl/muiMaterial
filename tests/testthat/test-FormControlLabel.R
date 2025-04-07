test_that("FormControlLabel() returns shiny.tag, correct name and value", {
  expect_equal(class(FormControlLabel()), "shiny.tag")
  expect_equal(environment(FormControlLabel()[["children"]][[2]])[["data"]][["name"]], "FormControlLabel")
  expect_equal(environment(FormControlLabel("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
