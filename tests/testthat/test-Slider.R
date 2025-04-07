test_that("Slider() returns shiny.tag, correct name and value", {
  expect_equal(class(Slider()), "shiny.tag")
  expect_equal(environment(Slider()[["children"]][[2]])[["data"]][["name"]], "Slider")
  expect_equal(environment(Slider("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
