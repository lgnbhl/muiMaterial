# SpeedDialAction

<https://mui.com/material-ui/api/speed-dial-action/>

## Usage

``` r
SpeedDialAction(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- delay `number`  
  Default is 0 Adds a transition delay, to allow a series of
  SpeedDialActions to be animated.

- FabProps `object`  
  Default is Props applied to the Fab component.Deprecated Use
  slotProps.fab instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- icon `node`  
  Default is - The icon to display in the SpeedDial Fab.

- id `string`  
  Default is - This prop is used to help implement the accessibility
  logic. If you don't provide this prop. It falls back to a randomly
  generated id.

- open `bool`  
  Default is - If true, the component is shown.

- slotProps
  `{ fab?: func| object, staticTooltip?: func| object, staticTooltipLabel?: func| object, tooltip?: func| object }`  
  Default is The props used for each slot inside.

- slots
  `{ fab?: elementType, staticTooltip?: elementType, staticTooltipLabel?: elementType, tooltip?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- TooltipClasses `object`  
  Default is - classes prop applied to the Tooltip element.Deprecated
  Use slotProps.tooltip.classes instead. This prop will be removed in a
  future major release. See Migrating from deprecated APIs for more
  details.

- tooltipOpen `bool`  
  Default is FALSE Make the tooltip always visible when the SpeedDial is
  open.Deprecated Use slotProps.tooltip.open instead. This prop will be
  removed in a future major release. See Migrating from deprecated APIs
  for more details.

- tooltipPlacement
  `'auto-end'| 'auto-start'| 'auto'| 'bottom-end'| 'bottom-start'| 'bottom'| 'left-end'| 'left-start'| 'left'| 'right-end'| 'right-start'| 'right'| 'top-end'| 'top-start'| 'top'`  
  Default is 'left' Placement of the tooltip.Deprecated Use
  slotProps.tooltip.placement instead. This prop will be removed in a
  future major release. See Migrating from deprecated APIs for more
  details.

- tooltipTitle `node`  
  Default is - Label to display in the tooltip.Deprecated Use
  slotProps.tooltip.title instead. This prop will be removed in a future
  major release. See Migrating from deprecated APIs for more details.
