test_that("Table() returns shiny.tag, correct name and value", {
  expect_equal(class(Table()), "shiny.tag")
  expect_equal(environment(Table()[["children"]][[2]])[["data"]][["name"]], "Table")
  expect_equal(environment(Table("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
