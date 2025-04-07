test_that("Select() returns shiny.tag, correct name and value", {
  expect_equal(class(Select()), "shiny.tag")
  expect_equal(environment(Select()[["children"]][[2]])[["data"]][["name"]], "Select")
  expect_equal(environment(Select("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
