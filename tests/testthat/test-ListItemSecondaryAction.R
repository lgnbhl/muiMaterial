test_that("ListItemSecondaryAction() returns shiny.tag, correct name and value",
          {
            expect_equal(class(ListItemSecondaryAction()), "shiny.tag")
            expect_equal(environment(ListItemSecondaryAction()[["children"]][[2]])[["data"]][["name"]],
                         "ListItemSecondaryAction")
            expect_equal(environment(ListItemSecondaryAction("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
          })
