test_that("PigmentGrid() returns shiny.tag, correct name and value", {
  expect_equal(class(PigmentGrid()), "shiny.tag")
  expect_equal(environment(PigmentGrid()[["children"]][[2]])[["data"]][["name"]], "PigmentGrid")
  expect_equal(environment(PigmentGrid("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
