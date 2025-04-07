test_that("Badge() returns shiny.tag, correct name and value", {
  expect_equal(class(Badge()), "shiny.tag")
  expect_equal(environment(Badge()[["children"]][[2]])[["data"]][["name"]], "Badge")
  expect_equal(environment(Badge("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
