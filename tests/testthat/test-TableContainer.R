test_that("TableContainer() returns shiny.tag, correct name and value", {
  expect_equal(class(TableContainer()), "shiny.tag")
  expect_equal(environment(TableContainer()[["children"]][[2]])[["data"]][["name"]], "TableContainer")
  expect_equal(environment(TableContainer("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
