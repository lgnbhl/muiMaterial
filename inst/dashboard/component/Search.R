# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/Search.tsx

Search <- function(){
  FormControl(
    sx = list(width = list(xs = '100%', md = '25ch')),
    variant = "outlined",
    OutlinedInput(
      size = "small",
      id = "search",
      placeholder = "Search…",
      sx = list(flexGrow = 1),
      startAdornment = list(
        InputAdornment(
          position = "start",
          sx = list(color = 'text.primary'),
          shiny::icon("search")
        )
      ),
      inputProps = list(
        'aria-label' = 'search'
      )
    )
  )
}