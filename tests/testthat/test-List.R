test_that("List() returns shiny.tag, correct name and value", {
  expect_equal(class(List()), "shiny.tag")
  expect_equal(environment(List()[["children"]][[2]])[["data"]][["name"]], "List")
  expect_equal(environment(List("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
