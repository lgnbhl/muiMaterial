const webpack = require('webpack');
const path = require('path');
const { LicenseWebpackPlugin } = require('license-webpack-plugin');

const config = {
  entry: './src/index.js',
  mode: 'production',
  output: {
    path: path.join(__dirname, '..', 'inst', 'www', 'muiMaterial'),
    filename: 'mui-material.js',
  },
  resolve: { extensions: ['.js', '.jsx', '.ts', '.tsx'] },

  module: {
    rules: [
      {
        test: /\.(js|jsx|ts|tsx)$/,
        exclude: /node_modules/,
        use: ['babel-loader'],
      },
    ],
  },

  externals: {
    react: 'jsmodule["react"]',
    'react-dom': 'jsmodule["react-dom"]',
    '@/shiny.react': 'jsmodule["@/shiny.react"]',
  },
  plugins: [
    new webpack.DefinePlugin({ 'process.env': '{}' }),
    new LicenseWebpackPlugin({
      outputFilename: 'mui-material.js.LICENSE.txt',
      additionalModules: [
        { name: '@mui/material', directory: path.resolve(__dirname, 'node_modules/@mui/material') },
        { name: '@mui/system', directory: path.resolve(__dirname, 'node_modules/@mui/system') },
        { name: '@mui/utils', directory: path.resolve(__dirname, 'node_modules/@mui/utils') },
        { name: '@mui/lab', directory: path.resolve(__dirname, 'node_modules/@mui/lab') },
      ],
    }),
  ],
  performance: {
    maxAssetSize: 2097152, // 2 MiB
    maxEntrypointSize: 2097152, // 2 MiB
  },
};

module.exports = config;
