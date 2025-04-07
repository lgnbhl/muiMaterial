test_that("RadioGroup() returns shiny.tag, correct name and value", {
  expect_equal(class(RadioGroup()), "shiny.tag")
  expect_equal(environment(RadioGroup()[["children"]][[2]])[["data"]][["name"]], "RadioGroup")
  expect_equal(environment(RadioGroup("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
