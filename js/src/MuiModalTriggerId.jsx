import { useState } from 'react';
import { Modal } from '@mui/material';
import { useTriggerBind } from './useTriggerBind';

export default function MuiModalTriggerId({ triggerId, onClose, children, ...props }) {
  const [open, setOpen] = useState(false);
  useTriggerBind(triggerId, () => setOpen(true));

  // Compose the caller's onClose instead of letting it override the wrapper's:
  // the modal always closes itself, then the caller is notified. `open`
  // comes after {...props} — it is wrapper-owned state.
  const handleClose = (e, reason) => {
    setOpen(false);
    if (onClose) onClose(e, reason);
  };

  return (
    <Modal {...props} open={open} onClose={handleClose}>
      {children}
    </Modal>
  );
}
