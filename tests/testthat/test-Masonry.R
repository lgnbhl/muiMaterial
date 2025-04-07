test_that("Masonry() returns shiny.tag, correct name and value", {
  expect_equal(class(Masonry()), "shiny.tag")
  expect_equal(environment(Masonry()[["children"]][[2]])[["data"]][["name"]], "Masonry")
  expect_equal(environment(Masonry("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
