# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/NavbarBreadcrumbs.tsx

NavbarBreadcrumbs <- function(){
  Breadcrumbs(
    'aria-label' = "breadcrumb",
    separator = shiny::icon("chevron-right"),
    Typography(
      variant = "body1", 
      "Dashboard"
    ),
    Typography(
      variant = "body1",
      sx = list(color = 'text.primary', fontWeight = 600),
      "Home"
    )
  )
}
