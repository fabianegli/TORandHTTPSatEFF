# HTTPS and TOR

# originals
# https://www.eff.org/files/tor-https-0.png
# https://www.eff.org/files/tor-https-1.png
# https://www.eff.org/files/tor-https-2.png
# https://www.eff.org/files/tor-https-3.png

# Makefile to convert translated and edited svg files to png in the correct size

# then add your language code into the list here
LANG = en de

SVG = $(foreach l, $(LANG),\
	$(foreach f,\
		tor-https-0.svg\
		tor-https-1.svg\
		tor-https-2.svg\
		tor-https-3.svg,\
	$l/svg/$f))
IMG = $(foreach l, $(LANG),\
	$(foreach f,\
		tor-https-0.png\
		tor-https-1.png\
		tor-https-2.png\
		tor-https-3.png,\
	$l/png/$f))
PDF = $(foreach l, $(LANG),\
	$(foreach f,\
		tor-https-0.pdf\
		tor-https-1.pdf\
		tor-https-2.pdf\
		tor-https-3.pdf,\
	$l/pdf/$f))

pdf: language_directory_pdf $(PDF)
img: language_directory_png $(IMG)
translate: language_directory_svg $(SVG)
exports: language_directory_png language_directory_pdf $(IMG) $(PDF)
all: language_directory_svg language_directory_png language_directory_pdf $(SVG) $(IMG) $(PDF)

INKSCAPE_PNG = inkscape -C -w 792 -e
INKSCAPE_PDF = inkscape -C -A

language_directory_svg:
	mkdir -p $(LANG)
	mkdir -p $(LANG)/svg

language_directory_pdf:
	mkdir -p $(LANG)/pdf

language_directory_png:
	mkdir -p $(LANG)/png

$(LANG)/svg/tor-https-0.svg: en/svg/tor-https-0.svg
	sed "`cat replace-$(LANG).txt | tr -d '\n'`" > $@ < $<
$(LANG)/svg/tor-https-1.svg: en/svg/tor-https-1.svg
	sed "`cat replace-$(LANG).txt | tr -d '\n'`" > $@ < $<
$(LANG)/svg/tor-https-2.svg: en/svg/tor-https-2.svg
	sed "`cat replace-$(LANG).txt | tr -d '\n'`" > $@ < $<
$(LANG)/svg/tor-https-3.svg: en/svg/tor-https-3.svg
	sed "`cat replace-$(LANG).txt | tr -d '\n'`" > $@ < $<

$(LANG)/png/tor-https-0.png: $(LANG)/svg/tor-https-0.svg
	$(INKSCAPE_PNG) $@ $<
$(LANG)/png/tor-https-1.png: $(LANG)/svg/tor-https-1.svg
	$(INKSCAPE_PNG) $@ $<
$(LANG)/png/tor-https-2.png: $(LANG)/svg/tor-https-2.svg
	$(INKSCAPE_PNG) $@ $<
$(LANG)/png/tor-https-3.png: $(LANG)/svg/tor-https-3.svg
	$(INKSCAPE_PNG) $@ $<

$(LANG)/pdf/tor-https-0.pdf: $(LANG)/svg/tor-https-0.svg
	$(INKSCAPE_PDF) $@ $<
$(LANG)/pdf/tor-https-1.pdf: $(LANG)/svg/tor-https-1.svg
	$(INKSCAPE_PDF) $@ $<
$(LANG)/pdf/tor-https-2.pdf: $(LANG)/svg/tor-https-2.svg
	$(INKSCAPE_PDF) $@ $<
$(LANG)/pdf/tor-https-3.pdf: $(LANG)/svg/tor-https-3.svg
	$(INKSCAPE_PDF) $@ $<
