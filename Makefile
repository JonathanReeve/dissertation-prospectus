reeve-prospectus.pdf: reeve-prospectus.md
	pandoc -o $@ $< --template=template.tex --bibliography=/home/jon/Dropbox/Papers/library.bib --filter=pandoc-citeproc --csl=mla.csl

reeve-prospectus.html: reeve-prospectus.md
	pandoc -o $@ $< --template=template.html --standalone --bibliography=/home/jon/Dropbox/Papers/library.bib --filter=pandoc-citeproc --csl=mla.csl
