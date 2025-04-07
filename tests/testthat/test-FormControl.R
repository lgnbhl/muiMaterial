test_that("FormControl() returns shiny.tag, correct name and value", {
  expect_equal(class(FormControl()), "shiny.tag")
  expect_equal(environment(FormControl()[["children"]][[2]])[["data"]][["name"]], "FormControl")
  expect_equal(environment(FormControl("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
