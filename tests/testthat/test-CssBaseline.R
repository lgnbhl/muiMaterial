test_that("CssBaseline() returns shiny.tag, correct name and value", {
  expect_equal(class(CssBaseline()), "shiny.tag")
  expect_equal(environment(CssBaseline()[["children"]][[2]])[["data"]][["name"]], "CssBaseline")
  expect_equal(environment(CssBaseline("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
