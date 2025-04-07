test_that("SpeedDialAction() returns shiny.tag, correct name and value", {
  expect_equal(class(SpeedDialAction()), "shiny.tag")
  expect_equal(environment(SpeedDialAction()[["children"]][[2]])[["data"]][["name"]], "SpeedDialAction")
  expect_equal(environment(SpeedDialAction("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
