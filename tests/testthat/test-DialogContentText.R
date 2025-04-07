test_that("DialogContentText() returns shiny.tag, correct name and value",
          {
            expect_equal(class(DialogContentText()), "shiny.tag")
            expect_equal(environment(DialogContentText()[["children"]][[2]])[["data"]][["name"]], "DialogContentText")
            expect_equal(environment(DialogContentText("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
          })
