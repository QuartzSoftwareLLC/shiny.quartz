import ReactMarkdownBase from 'react-markdown';
import * as Mui from '@mui/material';
import remarkMath from 'remark-math';
import rehypeKatex from 'rehype-katex';

import 'katex/dist/katex.min.css'; // `rehype-katex` does not import the CSS for you
const Typography = (variant) => (props) =>
  <Mui.Typography variant={variant} {...props} />;
export default function ({ children, ...props }) {
  return (
    <ReactMarkdownBase
      components={{
        h1: Typography('h1'),
        h2: Typography('h2'),
        h3: Typography('h3'),
        h4: Typography('h4'),
        h5: Typography('h5'),
        h6: Typography('h6'),
        a: Mui.Link,
        p: Typography('body1'),
        em: Typography('body2'),
      }}
      remarkPlugins={[remarkMath]}
      rehypePlugins={[rehypeKatex]}
      {...props}
    >
      {children}
    </ReactMarkdownBase>
  );
}
