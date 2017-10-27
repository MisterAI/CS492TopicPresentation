all:
	max_print_line=1000 pdflatex -output-directory ./build Topic_Presentation.tex | grep -v \/usr\/local
	bibtex ./build/Topic_Presentation
	max_print_line=1000 pdflatex -output-directory ./build Topic_Presentation.tex | grep -v \/usr\/local
	max_print_line=1000 pdflatex -output-directory ./build Topic_Presentation.tex | grep -v \/usr\/local

clean:
	-rm *.bbl *.aux *.blg *.log *.toc *.glo *.gls *.glg *.ist

once:
	max_print_line=1000 pdflatex -output-directory ./build Topic_Presentation.tex | grep -v \/usr\/local

