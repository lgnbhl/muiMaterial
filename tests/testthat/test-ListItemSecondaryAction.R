test_that("ListItemSecondaryAction() returns shiny.tag, correct name and value",
          {
            expect_true(inherits(ListItemSecondaryAction(), "shiny.tag"))
            expect_equal(react_name(ListItemSecondaryAction()),
                         "ListItemSecondaryAction")
            expect_equal(react_props(ListItemSecondaryAction("Test"))[["children"]], "Test")
          })
