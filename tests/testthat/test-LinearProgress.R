test_that("LinearProgress() returns shiny.tag, correct name and value", {
  expect_equal(class(LinearProgress()), "shiny.tag")
  expect_equal(environment(LinearProgress()[["children"]][[2]])[["data"]][["name"]], "LinearProgress")
  expect_equal(environment(LinearProgress("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
