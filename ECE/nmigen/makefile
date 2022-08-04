SRC = ./
SOURCES = $(shell find $(SRC) -name "*.md")
PDFS = $(SOURCES:%.md=pdfs/%.pdf)

all: $(PDFS)

debug:
	$(info SOURCES is $(SOURCES))
	$(info PDFS is $(PDFS))
pdfs/:
	mkdir -p pdfs

pdfs/%.pdf:$(SRC)/%.md pdfs/
	pandoc -s $< -o $@

clean:
	rm -rf pdfs

.PHONY: all clean debug
