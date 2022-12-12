import React from 'react';
import Header from './Header';
import InfoIcon from '@mui/icons-material/Info';

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  component: Header,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
};

export const Primary = Header.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
Primary.args = {
  children: 'Hello there',
};
