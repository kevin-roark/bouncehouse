build:
	browserify sheen/js/main.es6 -t babelify --outfile sheen/js/build/build.js

watch:
	watchify sheen/js/main.es6 -v -t babelify -o sheen/js/build/build.js

prod:
	browserify sheen/js/main.es6 -t babelify --outfile sheen/js/build/build.js
	minify sheen/js/build/build.js > sheen/js/build/build.min.js
	minify sheen/css/main.css > sheen/css/main.min.css

serve:
	serve -p 8555 ./sheen/
