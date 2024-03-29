const mix = require('laravel-mix');

//mistake in summernote: module.exports = factory(require("jQuery"));
mix.webpackConfig({
    resolve: {
        alias: {
            'jQuery': path.resolve(__dirname, 'node_modules/jquery/dist/jquery.js')
        }
    }
});
/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('resources/js/admin.js', 'public/js')
    .js('resources/js/front.js', 'public/js')
    .sass('resources/sass/admin.scss', 'public/css')
    .sass('resources/sass/front.scss', 'public/css');
