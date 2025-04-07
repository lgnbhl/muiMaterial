test_that("GlobalStyles() returns shiny.tag, correct name and value", {
  expect_equal(class(GlobalStyles()), "shiny.tag")
  expect_equal(environment(GlobalStyles()[["children"]][[2]])[["data"]][["name"]], "GlobalStyles")
  expect_equal(environment(GlobalStyles("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
