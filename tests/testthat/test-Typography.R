test_that("Typography() returns shiny.tag, correct name and value", {
  expect_equal(class(Typography()), "shiny.tag")
  expect_equal(environment(Typography()[["children"]][[2]])[["data"]][["name"]], "Typography")
  expect_equal(environment(Typography("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
