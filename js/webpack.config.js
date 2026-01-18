const webpack = require('webpack');
const path = require('path');

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
      {
        test: /\.css$/,
        exclude: /node_modules/,
        use: ['style-loader', 'css-loader'],
      },
    ],
  },

  externals: {
    react: 'jsmodule["react"]',
    'react-dom': 'jsmodule["react-dom"]',
    '@/shiny.react': 'jsmodule["@/shiny.react"]',
  },
  plugins: [new webpack.DefinePlugin({ 'process.env': '{}' })],
  performance: {
    maxAssetSize: 2097152, // 2 MiB
    maxEntrypointSize: 2097152, // 2 MiB
  },
};

module.exports = config;
