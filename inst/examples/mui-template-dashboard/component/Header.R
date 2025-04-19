# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/Header.js
source(system.file("examples/mui-template-dashboard/component/NavbarBreadcrumbs.R", package = "shinyMaterialUI"))
source(system.file("examples/mui-template-dashboard/component/Search.R", package = "shinyMaterialUI"))
source(system.file("examples/mui-template-dashboard/component/MenuButton.R", package = "shinyMaterialUI"))

Header <- function(page_name = "Home", page_to = "/"){
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
    NavbarBreadcrumbs(page_name, page_to),
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

