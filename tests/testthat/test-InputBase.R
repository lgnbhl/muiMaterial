test_that("InputBase() returns shiny.tag, correct name and value", {
  expect_equal(class(InputBase()), "shiny.tag")
  expect_equal(environment(InputBase()[["children"]][[2]])[["data"]][["name"]], "InputBase")
  expect_equal(environment(InputBase("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
