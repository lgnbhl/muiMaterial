test_that(".triggerId factories validate their triggerId argument", {
  expect_error(Drawer.triggerId(123), "triggerId")
  expect_error(Dialog.triggerId(NULL), "triggerId")
  expect_error(Menu.triggerId(c("a", "b")), "triggerId")
})

test_that(".triggerId factories return a shiny.tag with the muiMaterial class", {
  for (fn in list(
    Drawer.triggerId,
    Dialog.triggerId,
    Menu.triggerId,
    Modal.triggerId,
    Popover.triggerId,
    SwipeableDrawer.triggerId
  )) {
    tag <- fn("anchor")
    expect_true(inherits(tag, "shiny.tag"))
    expect_true(inherits(tag, "muiMaterial"))
  }
})

test_that("Drawer.triggerId() wraps the MuiDrawerTriggerId React component", {
  tag <- Drawer.triggerId("openDrawer", anchor = "left")
  data <- environment(tag[["children"]][[2]])[["data"]]
  expect_equal(data[["name"]], "MuiDrawerTriggerId")
})

test_that("Dialog.triggerId() and Modal.triggerId() map to their JSX wrappers", {
  expect_equal(
    environment(Dialog.triggerId("x")[["children"]][[2]])[["data"]][["name"]],
    "MuiDialogTriggerId"
  )
  expect_equal(
    environment(Modal.triggerId("x")[["children"]][[2]])[["data"]][["name"]],
    "MuiModalTriggerId"
  )
  expect_equal(
    environment(Popover.triggerId("x")[["children"]][[2]])[["data"]][["name"]],
    "MuiPopoverTriggerId"
  )
})

test_that(".triggerId factories forward triggerId into props", {
  tag <- Drawer.triggerId("openDrawer", anchor = "left")
  props <- environment(tag[["children"]][[2]])[["data"]][["props"]]
  expect_equal(props$value$triggerId, "openDrawer")
  expect_equal(props$value$anchor, "left")
})

test_that("Menu.triggerId() supports closeOnItemClick = FALSE", {
  tag <- Menu.triggerId("openMenu", closeOnItemClick = FALSE)
  props <- environment(tag[["children"]][[2]])[["data"]][["props"]]
  expect_equal(props$value$triggerId, "openMenu")
  expect_false(props$value$closeOnItemClick)
})

test_that("SwipeableDrawer.triggerId() maps to MuiSwipeableDrawerTriggerId", {
  expect_equal(
    environment(SwipeableDrawer.triggerId("x")[["children"]][[2]])[["data"]][["name"]],
    "MuiSwipeableDrawerTriggerId"
  )
})
