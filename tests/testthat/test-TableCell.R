test_that("TableCell() returns shiny.tag, correct name and value", {
  expect_equal(class(TableCell()), "shiny.tag")
  expect_equal(environment(TableCell()[["children"]][[2]])[["data"]][["name"]], "TableCell")
  expect_equal(environment(TableCell("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
