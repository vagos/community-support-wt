all:
	npm install

run:
	find . -name '*.js' | entr -r node index.js
