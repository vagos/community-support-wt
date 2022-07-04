BIN = "node_modules/.bin"

.PHONY: clean run test docker

all:
	npm install

run:
	find . -not \( -path "./db/*" -prune \) -name '*.js' | entr -r node index.js

test:
	./$(BIN)/jshint ./ --exclude node_modules,db
	./$(BIN)/jest --forceExit

docker:
	docker-compose build
	docker-compose start

clean:
	rm -r node_modules
