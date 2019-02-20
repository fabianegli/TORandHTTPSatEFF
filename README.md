# HTTPS and TOR

These graphics make the function of HTTPS and TOR visible for a lay audience.


# How to Translate Images and Export Images (Various Formats)

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


# Translate the Text on the Website

There in no standard way - yet.

The German translations are in the html-translations-de.txt file.


# List of translated pages

### English (original)

https://www.eff.org/pages/tor-and-https


# Contributions

Original work (English version) by the EFF.

German translations and minor adjustments in the SVG by Fabian Egli.

Workflow and makefiles are loosely based on the makefiles of the Free Software
Foundation's emailselfdefense.fsf.org translation repository.


# License

This work is licensed under the Creative Commons Attribution 4.0 International License. To view a copy of this license, visit http://creativecommons.org/licenses/by/4.0/ or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA
