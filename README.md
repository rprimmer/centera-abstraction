# Centera Abstraction

LaTeX conversion of *Efficient Long-Term Data Storage utilizing Object Abstraction
with Content Addressing*, by Robert Primmer, EMC Centera Division.
The original PDF identifies the publication as **EMC Storage Journal, July 2003**.

## Read the paper

[**Read or download the PDF**](centera-abstraction.pdf). No build tools are required.

The top-level PDF is tracked in Git. Running `make` refreshes it from `build/`;
commit source changes and the refreshed PDF together. Cleanup retains this copy.

## Build

Requires pdfLaTeX and latexmk (for example, MacTeX or TeX Live), with the packages
in [preamble.tex](preamble.tex). Run from the project root:

```sh
make                 # build and refresh centera-abstraction.pdf
make clean           # remove intermediates, retain PDF
make distclean       # remove build outputs, retain top-level PDF
make overleaf        # dist/centera-abstraction-overleaf.zip
```

`make clean-all` aliases `make distclean`. Direct `latexmk` uses the same
[configuration](.latexmkrc). Python 3 is required only for ZIP packaging;
Pandoc and Office applications are not build dependencies.
See [OVERLEAF.md](OVERLEAF.md) for upload instructions.

## Layout

This follows the [Centera collision paper](https://github.com/rprimmer/centera-collision-probabilities)
and the [RDOS paper](https://github.com/rprimmer/Relational-Distributed-Object-Store).

- [centera-abstraction.tex](centera-abstraction.tex): root document and reading order.
- [metadata.tex](metadata.tex), [preamble.tex](preamble.tex), and [macros.tex](macros.tex):
  authorship, date, typography, packages, and shared helpers.
- [sections/](sections/): abstract and seven main sections, including acknowledgments
  and the 16-entry bibliography.
- [fig/](fig/): the original kernel diagram as a vector PDF crop and three JPEG
  architecture diagrams extracted from the Word document.
- [scripts/package-overleaf.py](scripts/package-overleaf.py): source and figure packager.
- `build/` and `dist/`: generated outputs, excluded from Git.
- `Attic/`: all nine originals, preserved byte-for-byte and excluded from Git.
- `.conversion-baseline/`: extraction, SHA-256 manifest, and verification records,
  excluded from Git.

## Conversion scope

The five-page `Attic/CenteraAbstraction.pdf` is the authority for figure content,
publication date, and reference numbering. `Attic/Centera Abstraction.docx`
supplied the prose. The new edition uses the established single-column LaTeX
layout, with numbered sections and generated figure and bibliography links.

The conversion retains the original prose, historical product claims, spelling,
footnote, and 16 populated references. It removes the Word document's empty
reference 17 and stray title/caption punctuation. The kernel diagram, omitted by
the Word converter, is recovered from page 2 of the PDF. Original figure artwork
is retained; the diagrams have not been redrawn in TikZ. The author's email and
July 2003 publication date are restored from the PDF.

This is a transcription, not an editorial or technical revision. Statements about
MTTF, disk-density limits, hash uniqueness, replication, performance, and storage
cost remain historical claims. Bibliographic details and the historical URL have
not been independently verified.

The archived collection contains the paper in DOCX, ODT, and PDF formats;
correspondence in DOCX and ODT; two JPEGs; and Visio/ODG diagram sources.
These local archives are not part of a clone or Overleaf package.

## Verification

The conversion produces nine pages. Validation includes a clean LaTeX build,
resolved figure and bibliography references, visual review of every page,
compilation of the extracted Overleaf ZIP, and SHA-256 checks of all nine
archived originals. Local records are retained in `.conversion-baseline/`.
