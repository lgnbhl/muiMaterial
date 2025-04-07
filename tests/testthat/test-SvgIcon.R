test_that("SvgIcon() returns shiny.tag, correct name and value", {
  expect_equal(class(SvgIcon()), "shiny.tag")
  expect_equal(environment(SvgIcon()[["children"]][[2]])[["data"]][["name"]], "SvgIcon")
  expect_equal(environment(SvgIcon("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
