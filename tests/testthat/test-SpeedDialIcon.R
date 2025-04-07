test_that("SpeedDialIcon() returns shiny.tag, correct name and value", {
  expect_equal(class(SpeedDialIcon()), "shiny.tag")
  expect_equal(environment(SpeedDialIcon()[["children"]][[2]])[["data"]][["name"]], "SpeedDialIcon")
  expect_equal(environment(SpeedDialIcon("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
