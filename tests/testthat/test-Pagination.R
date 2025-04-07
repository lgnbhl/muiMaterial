test_that("Pagination() returns shiny.tag, correct name and value", {
  expect_equal(class(Pagination()), "shiny.tag")
  expect_equal(environment(Pagination()[["children"]][[2]])[["data"]][["name"]], "Pagination")
  expect_equal(environment(Pagination("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
