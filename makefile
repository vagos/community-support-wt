BIN = "node_modules/.bin"

all:
	npm install

run:
	find . -name '*.js' | entr -r node index.js

test:
	./$(BIN)/jshint ./ --exclude node_modules || true
	./$(BIN)/jest --forceExit || true
