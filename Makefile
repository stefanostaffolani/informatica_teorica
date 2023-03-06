INPUTS = th_cs.tex
COMPILER = pdflatex --halt-on-error

.PHONY: clean

th_cs.pdf: $(INPUTS)
	$(COMPILER) $(INPUTS); $(COMPILER) $(INPUTS)

clean: 
	rm th_cs.pdf th_cs.aux th_cs.log th_cs.toc

open: 
	xdg-open th_cs.pdf
