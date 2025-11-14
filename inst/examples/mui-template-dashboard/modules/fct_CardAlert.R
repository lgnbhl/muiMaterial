# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/dashboard/components/CardAlert.tsx

fct_CardAlert <- function(){
  Card(
    variant = "outlined",
    sx = list(
      m = 1.5,
      p = 1.5,
      width = 220 # PERSONAL MODIFICATION, to fix card width
    ),
    CardContent(
      shiny::icon("bolt"),
      Typography(
        gutterBottom = TRUE,
        sx = list(fontWeight = 600),
        "Made with muiMaterial"
      ),
      Typography(
        variant = "body2",
        sx = list(
          mb = 2,
          color = 'text.secondary'
        ),
        "Read the docs to learn how to use it."
      ),
      Button(
        variant = "contained",
        size = "small",
        fullWidth = TRUE,
        "Read the docs",
        href = "https://felixluginbuhl.com/muiMaterial",
        target = "_blank"
      )
    )
  )
}
