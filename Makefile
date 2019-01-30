reeve-prospectus.pdf: prospectus.org
	echo "Words: "
	wc -w prospectus.org
	pandoc -o $@ $< --template=template.tex --bibliography=references.bib --filter=pandoc-citeproc --csl=mla.csl --pdf-engine=xelatex

clean:
	rm reeve-prospectus.pdf
