# Using this template

This is a project template for writing documents in latex. It contains a small number of useful macros in `doc/latex/macros`. The `Makefile` integrates the use of (`adstex`](https://pypi.org/project/adstex/) by Y.Y. Mao.

### version : 0.0.4

## Installation

```pip install adstex```

## Expectations

- `doc` contains the latex documents. The `Makefile` is expected to be run from this directory. Instructions there.
- `data` has metadata related to the project
- `codes`

## Compiling
- `make clean` : cleans the unnecessary files
- `make all` should call adstex (and produce a dropdown menu if needed) and produce the pdf document

## HISTORY
- of different versions in `data/.HISTORY.md`
