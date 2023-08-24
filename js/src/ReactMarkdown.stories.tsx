import React, { useState } from 'react';

import ReactMarkdown from './ReactMarkdown';

// More on default export: https://storybook.js.org/docs/react/writing-stories/introduction#default-export
export default {
  component: ReactMarkdown,
  // More on argTypes: https://storybook.js.org/docs/react/api/argtypes
};

const Template = ({ ...props }) => {
  return (
    <>
      <ReactMarkdown {...props} >
{`
# This is a teset

## This is a sub header

|one|two|
|---|---|
|here|there|

\`this guy\`

That guy
One
$$M = c_d$$
Two

`}
      </ReactMarkdown>
    </>
  );
};

export const Primary = Template.bind({});
// More on args: https://storybook.js.org/docs/react/writing-stories/args
Primary.args = {}
