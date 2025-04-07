test_that("TableHead() returns shiny.tag, correct name and value", {
  expect_equal(class(TableHead()), "shiny.tag")
  expect_equal(environment(TableHead()[["children"]][[2]])[["data"]][["name"]], "TableHead")
  expect_equal(environment(TableHead("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
