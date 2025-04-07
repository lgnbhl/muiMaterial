# https://github.com/mui/material-ui/blob/v6.3.1/docs/data/material/getting-started/templates/shared-theme/AppTheme.js

AppTheme <- function(...){
  ThemeProvider(
    theme = list(
      cssVariables = list(
        colorSchemeSelector = 'data-mui-color-scheme',
        cssVarPrefix = 'template'
      ),
      typography = themePrimitivesTypography(),
      shape = themePrimitivesShape(),
      colorSchemes = themePrimitivesColorSchemes()
    ),
    disableTransitionOnChange = TRUE,
    ...
  )
}