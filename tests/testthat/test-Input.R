test_that("Input() returns shiny.tag, correct name and value", {
  expect_equal(class(Input()), "shiny.tag")
  expect_equal(environment(Input()[["children"]][[2]])[["data"]][["name"]], "Input")
  expect_equal(environment(Input("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
