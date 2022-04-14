import React, { useState } from 'react';

import DateSlider from './DateSlider';

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  component: DateSlider,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
};

const Template = (props) => {
  const [value, onChange] = useState('2020-01');
  return (
    <>
      <DateSlider value={value} onChange={onChange} {...props} />
      <p>{JSON.stringify(value)}</p>
    </>
  );
};

export const Primary = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
Primary.args = {
  startDate: '2009-11-01',
  endDate: '2020-12-31',
  interval: 'year',
  step: 1,
  format: 'YYYY-MM',
  markFormat: 'YYYY',
  markInterval: 2,
  animationStepSize: 5,
  animate: true,
};
