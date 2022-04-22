import React, { useState } from 'react';

import ListSlider from './ListSlider';

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  component: ListSlider,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
};

const Template = ({ defaultValue = 'Jim', ...props }) => {
  const [value, onChange] = useState(defaultValue);
  return (
    <>
      <ListSlider value={value} onChange={onChange} {...props} />
      <p>{JSON.stringify(value)}</p>
    </>
  );
};

export const Primary = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
Primary.args = {
  options: ['Hi', 'Jim', 'Jacob', 'John'],
  step: 1,
  markInterval: 1,
  animationStepSize: 1,
  animate: false,
};

export const Multiple = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
Multiple.args = {
  options: ['Hi', 'Jim', 'Jacob', 'John'],
  step: 1,
  markInterval: 1,
  defaultValue: ['Hi', 'Jim'],
  animationStepSize: 1,
  animate: false,
};
