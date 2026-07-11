import { useState } from 'react';
import { Popover } from '@mui/material';
import { useTriggerBind } from './useTriggerBind';

export default function MuiPopoverTriggerId({ triggerId, onClose, children, ...props }) {
  const [anchorEl, setAnchorEl] = useState(null);
  const open = Boolean(anchorEl);
  // The matched trigger element (second arg — delegated events keep
  // `currentTarget` on document) is the anchor the popover attaches to.
  useTriggerBind(triggerId, (e, el) => setAnchorEl(el));

  // Compose the caller's onClose instead of letting it override the wrapper's:
  // the popover always closes itself, then the caller is notified.
  // `anchorEl`/`open` come after {...props} — they are wrapper-owned state.
  const handleClose = (e, reason) => {
    setAnchorEl(null);
    if (onClose) onClose(e, reason);
  };

  return (
    <Popover {...props} anchorEl={anchorEl} open={open} onClose={handleClose}>
      {children}
    </Popover>
  );
}
