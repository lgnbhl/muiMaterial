# https://github.com/mui/material-ui/blob/v9.0.0/docs/data/material/getting-started/templates/dashboard/components/HighlightedCard.tsx

fct_HighlightedCard <- function() {
  Card(
    sx = list(height = '100%'),
    CardContent(
      shiny::icon("chart-line"),
      Typography(
        component = "h2",
        variant = "subtitle2",
        gutterBottom = TRUE,
        sx = list(fontWeight = '600'),
        "Explore your data"
      ),
      Typography(
        sx = list(color = 'text.secondary', mb = '8px'),
        "Uncover performance and visitor insights with our data wizardry."
      ),
      Button(
        variant = "contained",
        size = "small",
        color = "primary",
        "Get insights"
      )
    )
  )
}
