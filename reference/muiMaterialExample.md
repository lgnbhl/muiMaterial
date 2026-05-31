# Run muiMaterial example

Launch a Shiny example app or list the available examples. Use
\`muiMaterial::muiMaterialExample("showcase")\` to run a showcase app
with all the components.

## Usage

``` r
muiMaterialExample(example = NULL, ...)
```

## Arguments

- example:

  The name of the example to run, or \`NULL\` to retrieve the list of
  examples.

- ...:

  Additional arguments to pass to \`shiny::runApp()\`.

## Value

When \`example\` is \`NULL\`, a character vector of the available
example names. Otherwise the function launches a Shiny app and does not
return; interrupt R to stop it (usually by pressing Ctrl+C or Esc).

## Details

This function is adapted from \`runExample()\` in the shiny.blueprint
package.
