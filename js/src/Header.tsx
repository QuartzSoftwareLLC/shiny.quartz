import React from 'react';
import { IconButton, AppBar, Toolbar, useScrollTrigger } from '@mui/material';

export default function Header({
  children,
  logoUrl = "",
  logoHref = "https://epi.quartzsoftware.com"
}) {
  const trigger = useScrollTrigger({
    disableHysteresis: true,
    threshold: 0,
  });
  return (
    <>
      <AppBar
        sx={{
          backgroundColor: !trigger ? 'primary.main' : 'background.default',
          color: !trigger ? 'primary.contrastText' : 'primary.main',
        }}
        elevation={trigger ? 4 : 0}
      >
        <Toolbar>
          <IconButton href={logoHref}>
            <img src={logoUrl} alt="logo" height={50} width={50} />
          </IconButton>
          {children}
        </Toolbar>
      </AppBar>
      <Toolbar />
    </>
  );
}