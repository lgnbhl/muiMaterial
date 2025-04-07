test_that("TimelineOppositeContent() returns shiny.tag, correct name and value",
          {
            expect_equal(class(TimelineOppositeContent()), "shiny.tag")
            expect_equal(environment(TimelineOppositeContent()[["children"]][[2]])[["data"]][["name"]],
                         "TimelineOppositeContent")
            expect_equal(environment(TimelineOppositeContent("Test")[["children"]][[2]])[["data"]][["props"]][["value"]][["children"]], "Test")
          })
