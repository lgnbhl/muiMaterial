test_that("Toolbar() returns shiny.tag, correct name and value", {
  expect_equal(class(Toolbar()), "shiny.tag")
  expect_equal(environment(Toolbar()[["children"]][[2]])[["data"]][["name"]], "Toolbar")
  expect_equal(environment(Toolbar("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
