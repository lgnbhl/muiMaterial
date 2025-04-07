test_that("Menu() returns shiny.tag, correct name and value", {
  expect_equal(class(Menu()), "shiny.tag")
  expect_equal(environment(Menu()[["children"]][[2]])[["data"]][["name"]], "Menu")
  expect_equal(environment(Menu("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
