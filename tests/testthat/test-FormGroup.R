test_that("FormGroup() returns shiny.tag, correct name and value", {
  expect_equal(class(FormGroup()), "shiny.tag")
  expect_equal(environment(FormGroup()[["children"]][[2]])[["data"]][["name"]], "FormGroup")
  expect_equal(environment(FormGroup("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
