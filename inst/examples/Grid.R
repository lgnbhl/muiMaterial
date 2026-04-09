library(muiMaterial)

muiMaterialPage(
  CssBaseline(),
  Grid(
    container = TRUE,
    spacing = 2,
    Grid(
      size = list(xs = 12, md = 8),
      muiMaterial::Box(
        bgcolor = "primary.main",
        sx = list(textAlign = 'center'),
        "Box 1"
      )
    ),
    Grid(
      size = list(xs = 12, md = 4),
      muiMaterial::Box(
        bgcolor = "secondary.main",
        sx = list(textAlign = 'center'),
        "Box 2"
      )
    )
  )
)
