test_that("TabScrollButton() returns shiny.tag, correct name and value", {
  expect_equal(class(TabScrollButton()), "shiny.tag")
  expect_equal(environment(TabScrollButton()[["children"]][[2]])[["data"]][["name"]], "TabScrollButton")
  expect_equal(environment(TabScrollButton("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
