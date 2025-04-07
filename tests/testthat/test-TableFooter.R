test_that("TableFooter() returns shiny.tag, correct name and value", {
  expect_equal(class(TableFooter()), "shiny.tag")
  expect_equal(environment(TableFooter()[["children"]][[2]])[["data"]][["name"]], "TableFooter")
  expect_equal(environment(TableFooter("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
