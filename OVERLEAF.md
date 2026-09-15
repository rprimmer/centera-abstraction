# Overleaf

Run `make overleaf`, then upload `dist/centera-abstraction-overleaf.zip` as a new
Overleaf project. Select `centera-abstraction.tex` as the main document and
pdfLaTeX as the compiler.

The package contains all LaTeX sources, all four figure assets, and this guide.
It excludes the archived originals, generated manuscript PDF, build files, and
local conversion records. The included `latexmkrc` lets Overleaf manage its own
output directory; the local `.latexmkrc` instead uses `build/`.

The original diagrams are PDF/JPEG assets. Edit their placement and captions in
the section sources; editing their internal artwork requires a graphics editor
or a separate redraw.
