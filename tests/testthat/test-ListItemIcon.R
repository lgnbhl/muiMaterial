test_that("ListItemIcon() returns shiny.tag, correct name and value", {
  expect_equal(class(ListItemIcon()), "shiny.tag")
  expect_equal(environment(ListItemIcon()[["children"]][[2]])[["data"]][["name"]], "ListItemIcon")
  expect_equal(environment(ListItemIcon("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
