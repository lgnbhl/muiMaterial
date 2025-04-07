test_that("Box() returns shiny.tag, correct name and value", {
  expect_equal(class(Box()), "shiny.tag")
  expect_equal(environment(Box()[["children"]][[2]])[["data"]][["name"]], "Box")
  expect_equal(environment(Box("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
