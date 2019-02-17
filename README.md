# HTTPS and TOR

These graphics make the function of HTTPS and TOR visible for a lay audience.

# How to translate

1. Find out the language code of sour language. Let's assume it is 'fr'.
2. Duplicate "replace-de.txt" and change the language code "de" to "fr".
3. Replace the translated German strings with the French words.
4. Change the LANG variable in the Makefile to your language code.
5. Run `make -f Makefile translate` to translate the SVG files from english to
your language
6. Check for formatting errors and double check the translation.
7. Run `make -f Makefile img` to generate the PNG images from the SVG files.
This requires the OpenSans font and Inkscape to be installed on your system.

NB: `make -f Makefile` and `make -f Makefile all` combine steps 5. and 7. and
require that the formatting of the English original SVGs is compatible with the
translation.
