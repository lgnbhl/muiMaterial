test_that("SpeedDial() returns shiny.tag, correct name and value", {
  expect_true(inherits(SpeedDial(), "shiny.tag"))
  expect_equal(environment(SpeedDial()[["children"]][[2]])[["data"]][["name"]], "SpeedDial")
  expect_equal(environment(SpeedDial("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
