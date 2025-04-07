test_that("Icon() returns shiny.tag, correct name and value", {
  expect_equal(class(Icon()), "shiny.tag")
  expect_equal(environment(Icon()[["children"]][[2]])[["data"]][["name"]], "Icon")
  expect_equal(environment(Icon("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
