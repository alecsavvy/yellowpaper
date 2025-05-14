PANDOC=pandoc
SRC=yellowpaper.md
OUTDIR=exports
PDF_ENGINE=xelatex

all: md html pdf docx epub

md:
	mkdir -p $(OUTDIR)
	cp $(SRC) $(OUTDIR)/yellowpaper.md

html:
	mkdir -p $(OUTDIR)
	$(PANDOC) $(SRC) \
		--standalone \
		--toc \
		--mathjax \
		--from markdown+smart \
		-o $(OUTDIR)/yellowpaper.html

pdf:
	mkdir -p $(OUTDIR)
	$(PANDOC) $(SRC) \
		--toc \
		--pdf-engine=$(PDF_ENGINE) \
		-o $(OUTDIR)/yellowpaper.pdf

word docx:
	mkdir -p $(OUTDIR)
	$(PANDOC) $(SRC) -o $(OUTDIR)/yellowpaper.docx

epub:
	mkdir -p $(OUTDIR)
	$(PANDOC) $(SRC) -o $(OUTDIR)/yellowpaper.epub
