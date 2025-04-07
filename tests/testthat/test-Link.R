test_that("Link() returns shiny.tag, correct name and value", {
  expect_equal(class(Link()), "shiny.tag")
  expect_equal(environment(Link()[["children"]][[2]])[["data"]][["name"]], "Link")
  expect_equal(environment(Link("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
