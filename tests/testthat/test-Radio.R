test_that("Radio() returns shiny.tag, correct name and value", {
  expect_equal(class(Radio()), "shiny.tag")
  expect_equal(environment(Radio()[["children"]][[2]])[["data"]][["name"]], "Radio")
  expect_equal(environment(Radio("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
