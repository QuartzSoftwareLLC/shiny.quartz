import React, { useState } from 'react';

import ListSlider from './ListSlider';

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  component: ListSlider,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
};

const Template = (props) => {
  const [value, onChange] = useState('2020-01');
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
  options: ['Hi', 'Jim', 'Jacob'],
  step: 1,
  markInterval: 2,
  animationStepSize: 5,
  animate: false,
};
