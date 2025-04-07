test_that("TableBody() returns shiny.tag, correct name and value", {
  expect_equal(class(TableBody()), "shiny.tag")
  expect_equal(environment(TableBody()[["children"]][[2]])[["data"]][["name"]], "TableBody")
  expect_equal(environment(TableBody("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
