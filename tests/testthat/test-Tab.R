test_that("Tab() returns shiny.tag, correct name and value", {
  expect_equal(class(Tab()), "shiny.tag")
  expect_equal(environment(Tab()[["children"]][[2]])[["data"]][["name"]], "Tab")
  expect_equal(environment(Tab("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
