test_that("Typography() returns shiny.tag, correct name and value", {
  expect_true(inherits(Typography(), "shiny.tag"))
  expect_equal(environment(Typography()[["children"]][[2]])[["data"]][["name"]], "Typography")
  expect_equal(environment(Typography("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
