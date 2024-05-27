const mix = require('laravel-mix')
const path = require('path')

mix
  .js('resources/js/app.js', 'public/js')
  .vue({ version: 2 })
  .sass('resources/sass/app.scss', 'public/css')
    .sass('resources/sass/arabic.scss', 'public/css')
    .sass('resources/sass/english.scss', 'public/css')
    .sass('resources/sass/turkish.scss', 'public/css')
  .webpackConfig({
    output: { chunkFilename: 'js/[name].[contenthash].js' },

  })
