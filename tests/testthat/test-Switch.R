test_that("Switch() returns shiny.tag, correct name and value", {
  expect_true(inherits(Switch(), "shiny.tag"))
  expect_equal(environment(Switch()[["children"]][[2]])[["data"]][["name"]], "Switch")
  expect_equal(environment(Switch("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
