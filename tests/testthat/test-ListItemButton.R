test_that("ListItemButton() returns shiny.tag, correct name and value", {
  expect_equal(class(ListItemButton()), "shiny.tag")
  expect_equal(environment(ListItemButton()[["children"]][[2]])[["data"]][["name"]], "ListItemButton")
  expect_equal(environment(ListItemButton("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
