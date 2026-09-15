LATEXMK ?= latexmk

.PHONY: all pdf clean clean-all distclean overleaf help

all: pdf

# latexmk discovers dependencies (including figures) and resolves references.
pdf:
	$(LATEXMK) centera-abstraction.tex
	cp build/centera-abstraction.pdf centera-abstraction.pdf

# Restrict cleanup to generated files in build/; retain the finished PDF.
clean:
	$(LATEXMK) -c centera-abstraction.tex

clean-all: distclean

distclean:
	$(LATEXMK) -C centera-abstraction.tex

overleaf:
	python3 scripts/package-overleaf.py

help:
	@echo 'make            Build and refresh centera-abstraction.pdf with pdfLaTeX'
	@echo 'make clean      Remove build intermediates; keep the PDF'
	@echo 'make distclean  Remove build outputs; keep the top-level PDF'
	@echo 'make overleaf   Package editable sources in dist/centera-abstraction-overleaf.zip'
