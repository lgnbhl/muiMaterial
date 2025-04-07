test_that("ToggleButton() returns shiny.tag, correct name and value", {
  expect_equal(class(ToggleButton()), "shiny.tag")
  expect_equal(environment(ToggleButton()[["children"]][[2]])[["data"]][["name"]], "ToggleButton")
  expect_equal(environment(ToggleButton("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
