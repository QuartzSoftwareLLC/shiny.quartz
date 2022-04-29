import React from 'react';
import IconPopover from './IconPopover';
import InfoIcon from '@mui/icons-material/Info';

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  component: IconPopover,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
};

export const Primary = IconPopover.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
Primary.args = {
  children: 'Hello there',
  Icon: <InfoIcon />,
};
