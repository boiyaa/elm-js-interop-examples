const HtmlWebpackPlugin = require('html-webpack-plugin');
const path = require('path');

module.exports = {
  entry: path.join(__dirname, "index.js"),

  output: {
    path: path.resolve(__dirname, "dist"),
    filename: "bundle.js"
  },

  module: {
    rules: [
      {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        loader: "elm-webpack-loader"
      }
    ]
  },

  resolve: {
    extensions: [".js", ".elm"]
  },

  devServer: {
    contentBase: path.join(__dirname, "dist")
  },

  plugins: [
    new HtmlWebpackPlugin()
  ]
}
