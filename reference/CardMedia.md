# CardMedia

<https://mui.com/material-ui/api/card-media/>

## Usage

``` r
CardMedia(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is NA The content of the component.

- classes `object`  
  Default is NA Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is NA The component used for the root node. Either a string to
  use a HTML element or a component.

- image `string`  
  Default is NA Image to be displayed as a background image. Either
  image or src prop must be specified. Note that caller must specify
  height otherwise the image will not be visible.

- src `string`  
  Default is NA An alias for image property. Available only with media
  components. Media components: video, audio, picture, iframe, img.

- sx `Array func| object| bool | func| object`  
  Default is NA The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
