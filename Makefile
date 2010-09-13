# -*- Makefile -*- for maintenance of ~/prj/youngman_wedding


UPLOAD = speech.tex speech.ps speech.pdf Makefile running_order.org


ifdef debug
Q = 
else
Q = @
endif

speech.pdf: speech.tex


%.pdf: %.tex
	$(Q)pdftex $<


%.dvi: %.tex
	$(Q)tex $<


%.ps: %.dvi
	$(Q)dvips $<

.PHONY += upload
upload:
	git 


.PHONY += clean
clean:
	-$(Q)rm *.pdf *.ps *.dvi *.log *~
