import { useState } from 'react';
import { Dialog } from '@mui/material';
import { useTriggerBind } from './useTriggerBind';

export default function MuiDialogTriggerId({ triggerId, children, ...props }) {
  const [open, setOpen] = useState(false);
  useTriggerBind(triggerId, () => setOpen(true));

  return (
    <Dialog open={open} onClose={() => setOpen(false)} {...props}>
      {children}
    </Dialog>
  );
}
