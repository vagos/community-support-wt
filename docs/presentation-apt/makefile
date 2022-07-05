.PHONY: clean

all:
		mkdir -p build
			pdflatex -output-directory=build presentation.tex

watch:
		ls *.tex | entr -r make

clean:
		rm -r build
