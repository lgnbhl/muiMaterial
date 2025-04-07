test_that("FormHelperText() returns shiny.tag, correct name and value", {
  expect_equal(class(FormHelperText()), "shiny.tag")
  expect_equal(environment(FormHelperText()[["children"]][[2]])[["data"]][["name"]], "FormHelperText")
  expect_equal(environment(FormHelperText("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
