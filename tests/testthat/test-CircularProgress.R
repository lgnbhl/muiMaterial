test_that("CircularProgress() returns shiny.tag, correct name and value", {
  expect_equal(class(CircularProgress()), "shiny.tag")
  expect_equal(environment(CircularProgress()[["children"]][[2]])[["data"]][["name"]], "CircularProgress")
  expect_equal(environment(CircularProgress("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
