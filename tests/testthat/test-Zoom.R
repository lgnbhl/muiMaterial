test_that("Zoom() returns shiny.tag, correct name and value", {
  expect_equal(class(Zoom()), "shiny.tag")
  expect_equal(environment(Zoom()[["children"]][[2]])[["data"]][["name"]], "Zoom")
  expect_equal(environment(Zoom("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
