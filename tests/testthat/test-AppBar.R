test_that("AppBar() returns shiny.tag, correct name and value", {
  expect_equal(class(AppBar()), "shiny.tag")
  expect_equal(environment(AppBar()[["children"]][[2]])[["data"]][["name"]], "AppBar")
  expect_equal(environment(AppBar("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
