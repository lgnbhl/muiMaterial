import React from 'react';
import { Menu } from '@mui/material';

export default function MuiMenuTriggerId({ triggerId, children, sx, ...props }) {
  const [anchorEl, setAnchorEl] = React.useState(null);
  const open = Boolean(anchorEl);
  const handleOpen = (e) => setAnchorEl(e.currentTarget);
  const handleClose = () => setAnchorEl(null);

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
    <Menu
      anchorEl={anchorEl}
      open={open}
      onClose={handleClose}
      onClick={handleClose}
      sx={sx}
      {...props}
    >
      {children}
    </Menu>
  );
}
