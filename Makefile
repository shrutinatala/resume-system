.PHONY: master example tailored clean

master:
	pdflatex -interaction=nonstopmode resume.tex
	pdflatex -interaction=nonstopmode resume.tex

example:
	cd template && pdflatex -interaction=nonstopmode resume.tex && pdflatex -interaction=nonstopmode resume.tex

# Usage: make tailored FILE=tailored/acme-swe.tex
tailored:
	pdflatex -interaction=nonstopmode $(FILE)
	pdflatex -interaction=nonstopmode $(FILE)

clean:
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz *.toc
	rm -f template/*.aux template/*.log template/*.out template/*.fls template/*.fdb_latexmk template/*.synctex.gz template/*.toc
	rm -f tailored/*.aux tailored/*.log tailored/*.out tailored/*.fls tailored/*.fdb_latexmk tailored/*.synctex.gz tailored/*.toc
