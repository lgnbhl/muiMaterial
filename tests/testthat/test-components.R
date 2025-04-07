test_that("Card() returns shiny.tag, correct name and value", {
   expect_equal(class(Card()), "shiny.tag")
   expect_equal(environment(Card()[["children"]][[2]])[["data"]][["name"]], "Card")
   expect_equal(environment(Card("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
})
