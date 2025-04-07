test_that("Tooltip() returns shiny.tag, correct name and value", {
  expect_equal(class(Tooltip()), "shiny.tag")
  expect_equal(environment(Tooltip()[["children"]][[2]])[["data"]][["name"]], "Tooltip")
  expect_equal(environment(Tooltip("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
