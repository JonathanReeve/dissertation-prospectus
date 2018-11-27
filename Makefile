reeve-prospectus.pdf: reeve-prospectus.md
	pandoc -o $@ $< --template=template.tex --bibliography=/home/jon/Dropbox/Papers/library.bib --filter=pandoc-citeproc --csl=mla.csl --filter=plantuml.py

reeve-prospectus.html: reeve-prospectus.md
	pandoc -o $@ $< --template=template.html --standalone --bibliography=/home/jon/Dropbox/Papers/library.bib --filter=pandoc-citeproc --csl=mla.csl --filter=plantuml.py

clean:
	rm -rf plantuml-images
	rm reeve-prospectus.pdf

prospectus.bib:
	cat bibtex/* > prospectus.bib
