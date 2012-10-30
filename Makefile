all: help

help:
	@echo "Run 'make deps' to get Reveal.js dependencies."

deps: 
	wget https://github.com/hakimel/reveal.js/tarball/master -O revealjs.tar.gz
	tar -xf revealjs.tar.gz
	cp -r hakimel-reveal.js-*/lib .
	cp -r hakimel-reveal.js-*/css .
	cp -r hakimel-reveal.js-*/js .
	cp -r hakimel-reveal.js-*/plugin .
	rm -rf hakimel-reveal.js-*
	rm -f revealjs.tar.gz

clean:
	rm -f revealjs.tar.gz
	rm -rf hakimel-reveal.js-*
	rm -rf lib
	rm -rf css
	rm -rf js
	rm -rf plugin
