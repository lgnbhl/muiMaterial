import { useState } from 'react';
import { SwipeableDrawer } from '@mui/material';
import { useTriggerBind } from './useTriggerBind';

export default function MuiSwipeableDrawerTriggerId({ triggerId, width = 280, closeOnLinkClick, children, sx, slotProps, ...props }) {
  const [open, setOpen] = useState(false);
  useTriggerBind(triggerId, () => setOpen(true));

  const paperOnClick = closeOnLinkClick !== false
    ? (e) => { if (e.target.closest('a')) setOpen(false); }
    : undefined;

  // Merge a caller-supplied `slotProps` instead of replacing the one we build:
  // other slots are preserved, the caller's `paper` props win on conflicts, and
  // `sx` composes (our `width`/`sx` first, caller's paper `sx` last). The
  // close-on-link handler lives on the `paper` slot -- same approach as
  // MuiDrawerTriggerId -- so it covers the whole drawer surface without an
  // extra wrapper div.
  return (
    <SwipeableDrawer
      open={open}
      onClose={() => setOpen(false)}
      onOpen={() => setOpen(true)}
      {...props}
      slotProps={{
        ...slotProps,
        paper: {
          onClick: paperOnClick,
          ...slotProps?.paper,
          sx: { width, ...sx, ...slotProps?.paper?.sx },
        },
      }}
    >
      {children}
    </SwipeableDrawer>
  );
}
