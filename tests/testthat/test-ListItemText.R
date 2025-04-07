test_that("ListItemText() returns shiny.tag, correct name and value", {
  expect_equal(class(ListItemText()), "shiny.tag")
  expect_equal(environment(ListItemText()[["children"]][[2]])[["data"]][["name"]], "ListItemText")
  expect_equal(environment(ListItemText("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
