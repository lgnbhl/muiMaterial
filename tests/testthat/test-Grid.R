test_that("Grid() returns shiny.tag, correct name and value", {
  expect_equal(class(Grid()), "shiny.tag")
  expect_equal(environment(Grid()[["children"]][[2]])[["data"]][["name"]], "Grid")
  expect_equal(environment(Grid("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
