test_that("Checkbox() returns shiny.tag, correct name and value", {
  expect_true(inherits(Checkbox(), "shiny.tag"))
  expect_equal(environment(Checkbox()[["children"]][[2]])[["data"]][["name"]], "Checkbox")
  expect_equal(environment(Checkbox("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
