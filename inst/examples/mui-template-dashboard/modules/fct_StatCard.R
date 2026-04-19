# https://github.com/mui/material-ui/blob/v9.0.0/docs/data/material/getting-started/templates/dashboard/components/StatCard.tsx
# Note: SparkLineChart (requires @mui/x-charts) is omitted.

fct_StatCard <- function(
  title,
  value,
  interval,
  trend = c("up", "down", "neutral")
) {
  trend <- match.arg(trend)

  chip_color <- switch(
    trend,
    up = "success",
    down = "error",
    neutral = "default"
  )
  chip_label <- switch(trend, up = "+25%", down = "-25%", neutral = "+5%")

  Card(
    variant = "outlined",
    sx = list(height = '100%', flexGrow = 1),
    CardContent(
      Typography(
        component = "h2",
        variant = "subtitle2",
        gutterBottom = TRUE,
        title
      ),
      Stack(
        direction = "column",
        sx = list(justifyContent = 'space-between', flexGrow = 1, gap = 1),
        Stack(
          sx = list(justifyContent = 'space-between'),
          Stack(
            direction = "row",
            sx = list(justifyContent = 'space-between', alignItems = 'center'),
            Typography(variant = "h4", component = "p", value),
            Chip(size = "small", color = chip_color, label = chip_label)
          ),
          Typography(
            variant = "caption",
            sx = list(color = 'text.secondary'),
            interval
          ),
          Box(
            sx = list(
              width = '100%',
              height = 50,
              display = 'flex',
              alignItems = 'center',
              justifyContent = 'center',
              bgcolor = 'action.hover',
              borderRadius = 1,
              mt = 2
            ),
            Typography(
              variant = "caption",
              sx = list(color = 'text.disabled', m = 1),
              "SparkLineChart() \u2014 make it with ",
              muiMaterial::Link(
                href = "https://felixluginbuhl.com/muiCharts",
                target = "_blank",
                style = "color: inherit;",
                "muiCharts"
              )
            )
          )
        )
      )
    )
  )
}
