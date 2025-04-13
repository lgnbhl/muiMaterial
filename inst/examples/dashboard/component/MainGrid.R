# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/MainGrid.tsx

MainGrid <- function(...){
  Box(
    sx = list(width = '100%', maxWidth = list(sm = '100%', md = '1700px')),
    Typography(
      component = "h2",
      variant = "h6",
      sx = list(mb = 2),
    "Overview"
    ),
    Grid(
      container = TRUE,
      spacing = 2,
      columns = 12,
      sx = list(mb = "(theme) => theme.spacing(2)"),
      ...
    )
  )
}
