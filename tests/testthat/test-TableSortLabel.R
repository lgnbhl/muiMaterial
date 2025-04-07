test_that("TableSortLabel() returns shiny.tag, correct name and value", {
  expect_equal(class(TableSortLabel()), "shiny.tag")
  expect_equal(environment(TableSortLabel()[["children"]][[2]])[["data"]][["name"]], "TableSortLabel")
  expect_equal(environment(TableSortLabel("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
