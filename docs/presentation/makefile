.PHONY: clean

all:
	mkdir -p build
	pdflatex -output-directory=build main.tex

watch:
	find . -name "*.tex" | entr -r make

clean:
	rm ./build/*
