# https://github.com/mui/material-ui/blob/v9.0.0/docs/data/material/getting-started/templates/dashboard/components/ChartUserByCountry.tsx
# Note: PieChart (requires @mui/x-charts) is replaced by a placeholder.
# Country breakdown with LinearProgress is implemented faithfully.

fct_ChartUserByCountry <- function() {
  countries <- list(
    list(name = "India", value = 50, color = "hsl(220, 25%, 65%)"),
    list(name = "USA", value = 35, color = "hsl(220, 25%, 45%)"),
    list(name = "Brazil", value = 10, color = "hsl(220, 25%, 30%)"),
    list(name = "Other", value = 5, color = "hsl(220, 25%, 20%)")
  )

  Card(
    variant = "outlined",
    sx = list(width = '100%', flexGrow = 1),
    CardContent(
      Typography(
        component = "h2",
        variant = "subtitle2",
        gutterBottom = TRUE,
        "Users by country"
      ),
      Box(
        sx = list(
          width = '100%',
          height = 100,
          display = 'flex',
          alignItems = 'center',
          justifyContent = 'center',
          bgcolor = 'action.hover',
          borderRadius = 1,
          mb = 2
        ),
        Typography(
          variant = "caption",
          sx = list(color = 'text.disabled'),
          "PieChart() \u2014 make it with the ",
          muiMaterial::Link(
            href = "https://felixluginbuhl.com/muiCharts",
            target = "_blank",
            style = "color: inherit;",
            "muiCharts"
          ),
          " R package"
        )
      ),
      do.call(
        tagList,
        lapply(countries, function(country) {
          Stack(
            direction = "row",
            sx = list(alignItems = 'center', gap = 1, pb = 1),
            Box(
              sx = list(minWidth = 55),
              Typography(
                variant = "body2",
                sx = list(color = 'text.secondary'),
                country$name
              )
            ),
            LinearProgress(
              variant = "determinate",
              value = country$value,
              sx = list(
                flexGrow = 1,
                height = 8,
                borderRadius = 1,
                "[`& .MuiLinearProgress-bar`]" = list(bgcolor = country$color)
              )
            ),
            Box(
              sx = list(minWidth = 35),
              Typography(variant = "body2", paste0(country$value, "%"))
            )
          )
        })
      )
    )
  )
}
