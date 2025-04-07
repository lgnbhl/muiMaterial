test_that("GridLegacy() returns shiny.tag, correct name and value", {
  expect_equal(class(GridLegacy()), "shiny.tag")
  expect_equal(environment(GridLegacy()[["children"]][[2]])[["data"]][["name"]], "GridLegacy")
  expect_equal(environment(GridLegacy("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
