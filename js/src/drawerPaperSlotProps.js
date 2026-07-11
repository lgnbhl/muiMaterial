// Shared by MuiDrawerTriggerId and MuiSwipeableDrawerTriggerId: merge the
// wrapper-built `paper` slot with a caller-supplied `slotProps`.
//
// Merge rules:
//   - other slots are preserved, and the caller's `paper` props win on
//     conflicts — except the two keys the wrapper needs to compose:
//   - `onClick` is composed, not replaced: the wrapper's close-on-link-click
//     handler runs first, then the caller's. Letting a caller `onClick`
//     replace the wrapper's would silently disable `closeOnLinkClick`.
//   - `sx` is composed with MUI's array form. `sx` legally holds an object,
//     an array, or a function (`JS("theme => ...")` from R); object-spreading
//     a function yields `{}` and spreading an array mangles it into indexed
//     keys, so `[{ width }, ...callerSx]` is the only merge that keeps all
//     three shapes working. Caller entries come last and win.
export function mergePaperSlotProps(slotProps, { width, paperOnClick }) {
  const callerPaper = (slotProps && slotProps.paper) || {};
  const callerOnClick = callerPaper.onClick;
  const callerSx = callerPaper.sx;

  const onClick = (paperOnClick || callerOnClick)
    ? (e) => {
      if (paperOnClick) paperOnClick(e);
      if (callerOnClick) callerOnClick(e);
    }
    : undefined;

  const sx = [
    { width },
    ...(Array.isArray(callerSx) ? callerSx : [callerSx]),
  ].filter(Boolean);

  return {
    ...slotProps,
    paper: {
      ...callerPaper,
      onClick,
      sx,
    },
  };
}
