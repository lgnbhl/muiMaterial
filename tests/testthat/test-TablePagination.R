test_that("TablePagination() returns shiny.tag, correct name and value", {
  expect_equal(class(TablePagination()), "shiny.tag")
  expect_equal(environment(TablePagination()[["children"]][[2]])[["data"]][["name"]], "TablePagination")
  expect_equal(environment(TablePagination("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
