test_that("Container() returns shiny.tag, correct name and value", {
  expect_equal(class(Container()), "shiny.tag")
  expect_equal(environment(Container()[["children"]][[2]])[["data"]][["name"]], "Container")
  expect_equal(environment(Container("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
