Local TeXMF Tree:
================

This directory contains the sub-directories and files in my TEXMFHOME directory.
The user TEXMFHOME directory is in the search path of latex, hence latex files, 
style files, and bib files in this directory can be included in latex documents 
in any location on the system, and compiled by the user without requiring 
absolute paths. 

On a system with texmf/texlive, the location of this directory is specified by
a variable 'TEXMFHOME' the texmf.cnf file. This file can be located using

>>> kpsewhich texmf.cnf 

The TEXMFHOME directory is 
- on OSX: ${HOME}/Library/texmf
- on Ubuntu: ${HOME}/texmf

or 
>>> 'kpsewhich --expand-path='$TEXMFHOME'

To place such files in a different directory:
- one can edit the above texmf.cnf file to point to the new directory
- one can symlink the new directory to the texmf home directory
- one can export the variable TEXINPUTS to include that directory

The first two may be useful to sync across different computers with different
systems. The third is useful if one wants to include a particular texmf tree
temporirly for use with a single project.

with my bash shell, I have successfully used

>>> export TEXINPUTS=.:$HOME/doc/refs/latexstuff/:

to be able to look into subdirectories, but I have not tested this.
