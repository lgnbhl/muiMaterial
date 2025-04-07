test_that("Popover() returns shiny.tag, correct name and value", {
  expect_equal(class(Popover()), "shiny.tag")
  expect_equal(environment(Popover()[["children"]][[2]])[["data"]][["name"]], "Popover")
  expect_equal(environment(Popover("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
