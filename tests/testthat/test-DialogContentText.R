test_that("DialogContentText() returns shiny.tag, correct name and value",
          {
            expect_true(inherits(DialogContentText(), "shiny.tag"))
            expect_equal(react_name(DialogContentText()), "DialogContentText")
            expect_equal(react_props(DialogContentText("Test"))[["children"]], "Test")
          })
