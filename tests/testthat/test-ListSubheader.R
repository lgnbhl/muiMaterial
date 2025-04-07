test_that("ListSubheader() returns shiny.tag, correct name and value", {
  expect_equal(class(ListSubheader()), "shiny.tag")
  expect_equal(environment(ListSubheader()[["children"]][[2]])[["data"]][["name"]], "ListSubheader")
  expect_equal(environment(ListSubheader("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
