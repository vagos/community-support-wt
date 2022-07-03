all:
	npm install

run:
	find . -not \( -path "./db/*" -prune \) -name '*.js' | entr -r node index.js

docker:
	docker-compose start
