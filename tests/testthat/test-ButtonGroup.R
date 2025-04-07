test_that("ButtonGroup() returns shiny.tag, correct name and value", {
  expect_equal(class(ButtonGroup()), "shiny.tag")
  expect_equal(environment(ButtonGroup()[["children"]][[2]])[["data"]][["name"]], "ButtonGroup")
  expect_equal(environment(ButtonGroup("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
