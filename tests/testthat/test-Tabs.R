test_that("Tabs() returns shiny.tag, correct name and value", {
  expect_equal(class(Tabs()), "shiny.tag")
  expect_equal(environment(Tabs()[["children"]][[2]])[["data"]][["name"]], "Tabs")
  expect_equal(environment(Tabs("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
