test_that("TextField() returns shiny.tag, correct name and value", {
  expect_equal(class(TextField()), "shiny.tag")
  expect_equal(environment(TextField()[["children"]][[2]])[["data"]][["name"]], "TextField")
  expect_equal(environment(TextField("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
