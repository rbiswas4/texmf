# Using this template

This is a project template for writing documents in latex, mostly for astronomy purposes. It contains a small number of useful macros in `doc/latex/macros`. The `Makefile` integrates the use of (`adstex`](https://pypi.org/project/adstex/) by Y.Y. Mao, which makes adding references to a latex document easier, by accessing [NASA ADS](https://ui.adsabs.harvard.edu). Since this repository does not add to adstex's capabilities, citations in the latex documents must follow the rules/conventions set up in adstex.

This means, that at worst, articles in ADS should be cited by their ads bibcode. At best, you may be able to get away by using the first author and year convention, as described in adstex.
### version : 0.0.6

## Installation
- While this project can be cloned and renamed, one can also create a new github repository by using this as a template repository. 

In order to get this into a working state:

1. Install `adstex`: ```pip install adstex```
2. Follow the instructions as linked from (`adstex`](https://pypi.org/project/adstex/) to setup an account on ADS and get an `ADS_API_TOKEN` available.


Once set up, use, `make all` to first make the document. If you (a) have adstex installed, (b) API tokens for ADS set up, and (c) are connected to the internet.
## Expectations

- `doc` contains the latex documents. The `Makefile` is expected to be run from this directory. Instructions there.
- `data` has metadata related to the project
- `codes` currently only includes a single jupyter notebook producing a figure. This has some useful defaults.
- `doc/bib` has a `non_ads.bib` file. This is meant to be a file with references that are not listed at ADS. Unfortunately, one will have to fill in this bibtex file by hand.
- `doc/latex/` has actual tex files that are input in the main `notes.tex` file. 
- `doc/latex/macros` has a few useful macros. 
## Compiling
- For the first time: use `make all`
- `make clean` : cleans the unnecessary files
- `make tidy` : cleans unnecessary files, but keeps the pdf for use.
- `make all` should call adstex (and produce a dropdown menu if needed) and produce the pdf document
- `make' : The default corresponds to `make pdf`, which is when the bibtex file exists, and only the latex file needs recompilation. The default is set, as this seems to be what I most frequently do.
-  `make nuke` : remove all unnecessary files, created by latex or this program, but not the human made latex files. **Use with care** and check the exact meaning by reading the `Makefile` before running.

## Arxiv submission
While the arxiv allows for different kinds of submissins, the most straightforward one has a flat directory structure. We find a hierarchical structure is easier for development. After this is done, we can use the `./doc/tarup.sh` scritpt from the `doc` directory to create a directory called `submission` and a tar archive called `submission.tar.gz` which can be uploaded to the arxiv. To do this, in `doc` run
```
bash tarup.sh
```

### Possible Problems and Errors
- Make sure you are in a python environment where adstex is accessible.
- bibtex is downloaded, but the compilation fails: Obviously, latex failures due to buggy tex/bibtex are common and can have their own reasons, which is definitely not something to get into here. One problem worth noting is that ads has abbreviations of some journals which are not understandable by latex. (eg. `\prd`, depending on the `.bst` file. The file `doc/latex/journaldefs.tex` is suppposed to provide new commands to handle these. However, newer abbreviations might be found and reported via issues in this repository. Pull Requests with addition of some journal abbreviations are welcome.
## HISTORY
- of different versions in `data/.HISTORY.md`
