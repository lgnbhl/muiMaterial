import { useState } from 'react';
import { SwipeableDrawer } from '@mui/material';
import { useTriggerBind } from './useTriggerBind';
import { mergePaperSlotProps } from './drawerPaperSlotProps';

export default function MuiSwipeableDrawerTriggerId({ triggerId, width = 280, closeOnLinkClick, onClose, onOpen, children, slotProps, ...props }) {
  const [open, setOpen] = useState(false);
  useTriggerBind(triggerId, () => setOpen(true));

  // Compose the caller's onClose/onOpen instead of letting them override the
  // wrapper's: the drawer always manages its own state, then the caller is
  // notified.
  const handleClose = (e, reason) => {
    setOpen(false);
    if (onClose) onClose(e, reason);
  };
  const handleOpen = (e) => {
    setOpen(true);
    if (onOpen) onOpen(e);
  };

  const paperOnClick = closeOnLinkClick !== false
    ? (e) => { if (e.target.closest('a')) setOpen(false); }
    : undefined;

  // `sx` stays in props and styles the SwipeableDrawer root, like every other
  // component; size the paper with `width` or via `slotProps.paper.sx`.
  // A caller-supplied `slotProps` is merged, not replaced — see
  // mergePaperSlotProps for the exact rules (caller wins, except `onClick`
  // and `sx` which are composed). The close-on-link handler lives on the
  // `paper` slot — same approach as MuiDrawerTriggerId — so it covers the
  // whole drawer surface without an extra wrapper div. `open` comes after
  // {...props} — it is wrapper-owned state; a caller passing `open` would
  // silently break the trigger.
  return (
    <SwipeableDrawer
      {...props}
      open={open}
      onClose={handleClose}
      onOpen={handleOpen}
      slotProps={mergePaperSlotProps(slotProps, { width, paperOnClick })}
    >
      {children}
    </SwipeableDrawer>
  );
}
