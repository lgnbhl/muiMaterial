test_that("FormLabel() returns shiny.tag, correct name and value", {
  expect_equal(class(FormLabel()), "shiny.tag")
  expect_equal(environment(FormLabel()[["children"]][[2]])[["data"]][["name"]], "FormLabel")
  expect_equal(environment(FormLabel("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
