test_that("ListItem() returns shiny.tag, correct name and value", {
  expect_equal(class(ListItem()), "shiny.tag")
  expect_equal(environment(ListItem()[["children"]][[2]])[["data"]][["name"]], "ListItem")
  expect_equal(environment(ListItem("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
