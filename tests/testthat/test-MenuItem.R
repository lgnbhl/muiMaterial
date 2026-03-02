test_that("MenuItem() returns shiny.tag, correct name and value", {
  expect_true(inherits(MenuItem(), "shiny.tag"))
  expect_equal(environment(MenuItem()[["children"]][[2]])[["data"]][["name"]], "MenuItem")
  expect_equal(environment(MenuItem("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
