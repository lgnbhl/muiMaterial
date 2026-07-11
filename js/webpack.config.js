const webpack = require('webpack');
const path = require('path');
const { LicenseWebpackPlugin } = require('license-webpack-plugin');

module.exports = (env, argv) => {
  const mode = argv.mode || 'production';

  return {
  entry: './src/index.js',
  mode,
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
  // NODE_ENV is owned explicitly by the DefinePlugin below (instead of
  // webpack's implicit mode-based define) so the dev-vs-production choice is
  // visible here: production strips MUI's dev-mode warning code from the
  // bundle.
  optimization: { nodeEnv: false },
  plugins: [
    new webpack.DefinePlugin({
      'process.env': '{}',
      'process.env.NODE_ENV': JSON.stringify(mode),
    }),
    new LicenseWebpackPlugin({
      outputFilename: 'mui-material.js.LICENSE.txt',
      additionalModules: [
        { name: '@mui/material', directory: path.resolve(__dirname, 'node_modules/@mui/material') },
        { name: '@mui/system', directory: path.resolve(__dirname, 'node_modules/@mui/system') },
        { name: '@mui/utils', directory: path.resolve(__dirname, 'node_modules/@mui/utils') },
        { name: '@mui/lab', directory: path.resolve(__dirname, 'node_modules/@mui/lab') },
        { name: '@mui/private-theming', directory: path.resolve(__dirname, 'node_modules/@mui/private-theming') },
        { name: '@mui/styled-engine', directory: path.resolve(__dirname, 'node_modules/@mui/styled-engine') },
      ],
    }),
  ],
  performance: {
    maxAssetSize: 2097152, // 2 MiB
    maxEntrypointSize: 2097152, // 2 MiB
  },
  };
};
