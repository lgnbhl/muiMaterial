import { useState } from 'react';
import { Drawer } from '@mui/material';
import { useTriggerBind } from './useTriggerBind';
import { mergePaperSlotProps } from './drawerPaperSlotProps';

export default function MuiDrawerTriggerId({ triggerId, width = 280, closeOnLinkClick, onClose, children, slotProps, ...props }) {
  const [open, setOpen] = useState(false);
  useTriggerBind(triggerId, () => setOpen(true));

  // Compose the caller's onClose instead of letting it override the wrapper's:
  // the drawer always closes itself, then the caller is notified.
  const handleClose = (e, reason) => {
    setOpen(false);
    if (onClose) onClose(e, reason);
  };

  const paperOnClick = closeOnLinkClick !== false
    ? (e) => { if (e.target.closest('a')) setOpen(false); }
    : undefined;

  // `sx` stays in props and styles the Drawer root, like every other
  // component; size the paper with `width` or via `slotProps.paper.sx`.
  // A caller-supplied `slotProps` is merged, not replaced — see
  // mergePaperSlotProps for the exact rules (caller wins, except `onClick`
  // and `sx` which are composed). `open` comes after {...props} — it is
  // wrapper-owned state; a caller passing `open` would silently break the
  // trigger.
  return (
    <Drawer
      {...props}
      open={open}
      onClose={handleClose}
      slotProps={mergePaperSlotProps(slotProps, { width, paperOnClick })}
    >
      {children}
    </Drawer>
  );
}
