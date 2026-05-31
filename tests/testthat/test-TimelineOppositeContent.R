test_that("TimelineOppositeContent() returns shiny.tag, correct name and value",
          {
            expect_true(inherits(TimelineOppositeContent(), "shiny.tag"))
            expect_equal(react_name(TimelineOppositeContent()),
                         "TimelineOppositeContent")
            expect_equal(react_props(TimelineOppositeContent("Test"))[["children"]], "Test")
          })
