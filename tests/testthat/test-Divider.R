test_that("Divider() returns shiny.tag, correct name and value", {
  expect_equal(class(Divider()), "shiny.tag")
  expect_equal(environment(Divider()[["children"]][[2]])[["data"]][["name"]], "Divider")
  expect_equal(environment(Divider("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
