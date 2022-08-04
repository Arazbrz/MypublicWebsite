SRC = ./
SOURCES = $(shell find $(SRC) -name "*.md")
PDFS = $(SOURCES:%.md=pdfs/%.pdf)

all: $(PDFS)

makefile.svg: makefile.dot
	dot -Tsvg $< -o $@

debug:
	$(info SOURCES is $(SOURCES))
	$(info PDFS is $(PDFS))
pdfs/:
	mkdir -p pdfs

pdfs/%.pdf:$(SRC)/%.md pdfs/ makefile.svg
	pandoc -s $< -o $@

clean:
	rm -rf pdfs
	rm makefile.svg

.PHONY: all clean debug
