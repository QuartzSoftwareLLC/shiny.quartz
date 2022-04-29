import * as Mui from '@mui/material';
import React from 'react';

export default function IconPopper({ children, Icon }) {
  const [anchorEl, setAnchorEl] = React.useState(null);
  const open = Boolean(anchorEl);

  const handleClick = (event) => {
    setAnchorEl(event?.currentTarget);
  };

  const handleClose = () => {
    setAnchorEl(null);
  };

  return (
    <>
      <Mui.IconButton
        aria-label='info'
        aria-controls='info-menu'
        aria-haspopup='true'
        onClick={handleClick}
      >
        {Icon}
      </Mui.IconButton>
      <Mui.Popover
        id='info-menu'
        anchorEl={anchorEl}
        keepMounted
        open={open}
        onClose={handleClose}
      >
        <Mui.Paper sx={{ p: 2 }}>{children}</Mui.Paper>
      </Mui.Popover>
    </>
  );
}
