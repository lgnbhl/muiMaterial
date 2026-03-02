test_that("ButtonBase() returns shiny.tag, correct name and value", {
  expect_true(inherits(ButtonBase(), "shiny.tag"))
  expect_equal(environment(ButtonBase()[["children"]][[2]])[["data"]][["name"]], "ButtonBase")
  expect_equal(environment(ButtonBase("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
