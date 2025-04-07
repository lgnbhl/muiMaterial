test_that("InputLabel() returns shiny.tag, correct name and value", {
  expect_equal(class(InputLabel()), "shiny.tag")
  expect_equal(environment(InputLabel()[["children"]][[2]])[["data"]][["name"]], "InputLabel")
  expect_equal(environment(InputLabel("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
