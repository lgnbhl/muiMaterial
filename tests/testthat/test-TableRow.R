test_that("TableRow() returns shiny.tag, correct name and value", {
  expect_equal(class(TableRow()), "shiny.tag")
  expect_equal(environment(TableRow()[["children"]][[2]])[["data"]][["name"]], "TableRow")
  expect_equal(environment(TableRow("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
