const webpack = require('webpack');
const path = require('path');

const config = {
  entry: './src/index.js',
  mode: 'production',
  output: {
    path: path.join(__dirname, '..', 'inst', 'www'),
    filename: 'quartz.js',
  },
  resolve: { extensions: ['.js', '.jsx', '.ts', '.tsx'] },
  devtool: 'source-map',

  module: {
    rules: [
      {
        test: /\.(js|jsx|ts|tsx)$/,
        use: ['babel-loader'],
      },
      {
        test: /\.css$/,
        use: ['style-loader', 'css-loader'],
      },
    ],
  },

  externals: {
    react: 'jsmodule["react"]',
    'react-dom': 'jsmodule["react-dom"]',
    '@/shiny.react': 'jsmodule["@/shiny.react"]',
    '@mui/material': 'jsmodule["@mui/material"]',
    '@emotion/react': 'jsmodule["@emotion/react"]',
    '@emotion/styled': 'jsmodule["@emotion/styled"]',
  },
  plugins: [new webpack.DefinePlugin({ 'process.env': '{}' })],
};

module.exports = config;
