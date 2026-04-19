import { useState } from 'react';
import { Modal } from '@mui/material';
import { useTriggerBind } from './useTriggerBind';

export default function MuiModalTriggerId({ triggerId, children, ...props }) {
  const [open, setOpen] = useState(false);
  useTriggerBind(triggerId, () => setOpen(true));

  return (
    <Modal open={open} onClose={() => setOpen(false)} {...props}>
      {children}
    </Modal>
  );
}
