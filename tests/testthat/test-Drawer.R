test_that("Drawer() returns shiny.tag, correct name and value", {
  expect_equal(class(Drawer()), "shiny.tag")
  expect_equal(environment(Drawer()[["children"]][[2]])[["data"]][["name"]], "Drawer")
  expect_equal(environment(Drawer("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
