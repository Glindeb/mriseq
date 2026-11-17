#!/bin/sh
# Build the manual and the examples, and the release archive.
# Usage: ./build.sh            (manual + examples)
#        ./build.sh release    (also build/mriseq-<version>.zip)
set -e
cd "$(dirname "$0")"
export TEXINPUTS="$(pwd)/tex:"
(cd doc && pdflatex -interaction=nonstopmode -halt-on-error mriseq-doc.tex >/dev/null \
        && pdflatex -interaction=nonstopmode -halt-on-error mriseq-doc.tex >/dev/null)
(cd examples && pdflatex -interaction=nonstopmode -halt-on-error lab-report-figures.tex >/dev/null)
echo "built doc/mriseq-doc.pdf and examples/lab-report-figures.pdf"
if [ "$1" = "release" ]; then
  version=$(sed -n 's/.*ProvidesExplPackage{mriseq}{[^}]*}{\([^}]*\)}.*/\1/p' tex/mriseq.sty)
  rm -rf build && mkdir -p build/mriseq
  cp tex/mriseq.sty doc/mriseq-doc.tex doc/mriseq-doc.pdf README.md LICENSE lppl.tex build/mriseq/
  mkdir -p build/mriseq/examples
  cp examples/lab-report-figures.tex examples/lab-report-figures.pdf build/mriseq/examples/
  (cd build && zip -qr "mriseq-$version.zip" mriseq)
  echo "built build/mriseq-$version.zip"
fi
