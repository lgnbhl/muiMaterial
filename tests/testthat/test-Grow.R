test_that("Grow() returns shiny.tag, correct name and value", {
  expect_equal(class(Grow()), "shiny.tag")
  expect_equal(environment(Grow()[["children"]][[2]])[["data"]][["name"]], "Grow")
  expect_equal(environment(Grow("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
