test_that("PaginationItem() returns shiny.tag, correct name and value", {
  expect_equal(class(PaginationItem()), "shiny.tag")
  expect_equal(environment(PaginationItem()[["children"]][[2]])[["data"]][["name"]], "PaginationItem")
  expect_equal(environment(PaginationItem("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
