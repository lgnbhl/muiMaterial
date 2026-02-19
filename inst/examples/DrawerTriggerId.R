# custom SwipeableDrawer.triggerId() function built in js/src/SwipeableDrawerTriggerId.jsx

ui_SwipeableDrawer.triggerId <- muiMaterialPage(
  # In the AppBar, user adds a trigger with any id (mobile only)
  Box(
    IconButton(
      # To show only in mobile viewport
      # sx = list(display = list(xs = "flex", md = "none")),
      id = "test-drawer",
      shiny::icon("bars")
    )
  ),

  # Anywhere in the tree, user adds the Drawer.triggerId() or SwipeableDrawer.triggerId()
  Drawer.triggerId(
    triggerId = "test-drawer", # triggerId identical from the 'id' of the IconButton() above
    anchor = "left",
    width = 280,
    Box(
      sx = list(display = "flex", flexDirection = "column", height = "100%"),
      # Navigation links
      List(
        sx = list(pt = 2),
        ListItem(
          disablePadding = TRUE,
          ListItemButton(
            component = "a",
            href = "#about",
            ListItemIcon(shiny::icon("user")),
            ListItemText(primary = "About")
          )
        ),
        ListItem(
          disablePadding = TRUE,
          ListItemButton(
            component = "a",
            href = "#work",
            ListItemIcon(shiny::icon("briefcase")),
            ListItemText(primary = "Work")
          )
        ),
        ListItem(
          disablePadding = TRUE,
          ListItemButton(
            component = "a",
            href = "#contact",
            ListItemIcon(shiny::icon("envelope")),
            ListItemText(primary = "Contact")
          )
        )
      ),
      Divider(),
      # Social section
      List(
        subheader = ListSubheader("Social"),
        ListItem(
          disablePadding = TRUE,
          ListItemButton(
            component = "a",
            href = "https://github.com/...",
            target = "_blank",
            ListItemIcon(shiny::icon("github")),
            ListItemText(primary = "GitHub")
          )
        ),
        ListItem(
          disablePadding = TRUE,
          ListItemButton(
            component = "a",
            href = "https://linkedin.com/in/...",
            target = "_blank",
            ListItemIcon(shiny::icon("linkedin")),
            ListItemText(primary = "LinkedIn")
          )
        )
      )
    )
  )
)

htmltools::browsable(ui_SwipeableDrawer.triggerId)
