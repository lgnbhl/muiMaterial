test_that("Button() returns shiny.tag, correct name and value", {
  expect_equal(class(Button()), "shiny.tag")
  expect_equal(environment(Button()[["children"]][[2]])[["data"]][["name"]], "Button")
  expect_equal(environment(Button("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
