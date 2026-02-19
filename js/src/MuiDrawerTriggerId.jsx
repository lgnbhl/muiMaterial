import React from 'react';
import { Drawer } from '@mui/material';

export default function MuiDrawerTriggerId({ triggerId, width = 280, closeOnLinkClick, children, sx, ...props }) {
  const [open, setOpen] = React.useState(false);
  const handleOpen = () => setOpen(true);

  React.useEffect(() => {
    let cancelled = false;
    function bind() {
      const el = document.getElementById(triggerId);
      if (el) {
        el.addEventListener('click', handleOpen);
      } else if (!cancelled) {
        setTimeout(bind, 50);
      }
    }
    bind();
    return () => {
      cancelled = true;
      const el = document.getElementById(triggerId);
      if (el) el.removeEventListener('click', handleOpen);
    };
  }, [triggerId]);

  return (
    <Drawer
      open={open}
      onClose={() => setOpen(false)}
      onOpen={() => setOpen(true)}
      slotProps={{ paper: { sx: { width, ...sx } } }}
      {...props}
    >
      <div onClick={(e) => { if (closeOnLinkClick !== false && e.target.closest('a')) setOpen(false); }}>
        {children}
      </div>
    </Drawer>
  );
}
