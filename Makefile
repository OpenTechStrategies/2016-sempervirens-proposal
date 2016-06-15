all:
	pandoc --latex-engine=xelatex --template template.tex proposal.md --bibliography proposal.bib -o proposal.pdf

clean:
	rm proposal.pdf
