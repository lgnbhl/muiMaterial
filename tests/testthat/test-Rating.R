test_that("Rating() returns shiny.tag, correct name and value", {
  expect_equal(class(Rating()), "shiny.tag")
  expect_equal(environment(Rating()[["children"]][[2]])[["data"]][["name"]], "Rating")
  expect_equal(environment(Rating("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
