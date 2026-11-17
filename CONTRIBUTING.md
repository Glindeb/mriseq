# Contributing

Bug reports and suggestions are welcome in the
[issue tracker](https://github.com/Glindeb/mriseq/issues). Please include a
minimal example (see the bug report template).

If you change the package:

* The package is written in expl3 (`tex/mriseq.sty`); please keep the
  `mriseq` prefixes for internal names.
* Run `./build.sh` and check that the manual (`doc/mriseq-doc.pdf`) and
  `examples/lab-report-figures.pdf` compile without errors and look right.
* Describe user-visible changes in `CHANGELOG.md` and the change log of the
  manual.

By contributing you agree that your contribution is distributed under the
LaTeX Project Public License 1.3c or later, like the rest of the package.
