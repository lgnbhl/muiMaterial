test_that("Fade() returns shiny.tag, correct name and value", {
  expect_true(inherits(Fade(), "shiny.tag"))
  expect_equal(environment(Fade()[["children"]][[2]])[["data"]][["name"]], "Fade")
  expect_equal(environment(Fade("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
