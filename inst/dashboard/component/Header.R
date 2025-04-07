# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/Header.js
source(system.file("dashboard/component/NavbarBreadcrumbs.R", package = "shinyMaterialUI"))
source(system.file("dashboard/component/Search.R", package = "shinyMaterialUI"))
source(system.file("dashboard/component/MenuButton.R", package = "shinyMaterialUI"))

Header <- function(){
  Stack(
    direction = "row",
    sx = list(
      display = list(xs = 'none', md = 'flex'),
      width = '100%',
      alignItems = list(xs = 'flex-start', md = 'center'),
      justifyContent = 'space-between',
      maxWidth = list(sm = '100%', md = '1700px'),
      pt = 1.5
    ),
    spacing = 2,
    NavbarBreadcrumbs(),
    Stack(
      direction = "row",
      sx = list(gap = 1),
      Search() #,
      # CustomDatePicker()
      # MenuButton(
      #   showBadge = TRUE,
      #   'aria-label' = "Open notifications"
      # )
    )
  )
}

