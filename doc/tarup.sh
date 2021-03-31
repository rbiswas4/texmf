#!/usr/bin/env bash
mkdir -p submission
cp paper.tex paper.bbl mnras.bst mnras.cls latex/*.tex figs/*.pdf figs/*.pdf latex/tables/*.tex bib/paper.bib latex/macros/*.tex submission/
for f in `ls submission/*.tex`; do 
	echo $f
	grep figs $f
	sed -i '' "s/figs\///g" "$f"
	sed -i '' "s/latex\///g" "$f"
	sed -i '' "s/macros\///g" "$f"
	sed -i '' "s/tables\///g" "$f"
done
tar --exclude='props.tex' --exclude='submission/results.tex' --exclude='submission/our_results.tex' -czvf submission.tar.gz submission
#paper.tex paper.bbl mnras.bst mnras.cls latex/*.tex figs/*.pdf figs/*.tex latex/tables/*.tex bib/paper.bib latex/macros/*.tex
