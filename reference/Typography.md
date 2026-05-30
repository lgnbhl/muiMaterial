# Typography

<https://mui.com/material-ui/api/typography/>

## Usage

``` r
Typography(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- align `'center'| 'inherit'| 'justify'| 'left'| 'right'`  
  Default is 'inherit' Set the text-align on the component.

- children `node`  
  Default is - The content of the component.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- color
  `'primary'| 'secondary'| 'success'| 'error'| 'info'| 'warning'| 'textPrimary'| 'textSecondary'| 'textDisabled'| string`  
  Default is - The color of the component. It supports both default and
  custom theme colors, which can be added as shown in the palette
  customization guide.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- gutterBottom `bool`  
  Default is FALSE If true, the text will have a bottom margin.

- noWrap `bool`  
  Default is FALSE If true, the text will not wrap, but instead will
  truncate with a text overflow ellipsis.Note that text overflow can
  only happen with block or inline-block level elements (the element
  needs to have a width in order to overflow).

- paragraph `bool`  
  Default is FALSE If true, the element will be a paragraph
  element.Deprecated Use the component prop instead. This prop will be
  removed in a future major release. See Migrating from deprecated APIs
  for more details.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- variant
  `'body1'| 'body2'| 'button'| 'caption'| 'h1'| 'h2'| 'h3'| 'h4'| 'h5'| 'h6'| 'inherit'| 'overline'| 'subtitle1'| 'subtitle2'| string`  
  Default is 'body1' Applies the theme typography styles.

- variantMapping `object`  
  Default is h1: 'h1', h2: 'h2', h3: 'h3', h4: 'h4', h5: 'h5', h6: 'h6',
  subtitle1: 'h6', subtitle2: 'h6', body1: 'p', body2: 'p', inherit:
  'p', The component maps the variant prop to a range of different HTML
  element types. For instance, subtitle1 to h6 . If you wish to change
  that mapping, you can provide your own. Alternatively, you can use the
  component prop.
