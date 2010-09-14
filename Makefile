# -*- Makefile -*- for maintenance of ~/prj/youngman_wedding


ifdef debug
Q = 
else
Q = @
endif


all: speech.pdf speech.ps


%.pdf: %.tex
	$(Q)pdftex $<

%.dvi: %.tex
	$(Q)tex $<

%.ps: %.dvi
	$(Q)dvips $<


.PHONY += commit
commit:
	git commit


.PHONY += upload
upload:
	git push origin master


.PHONY += clean
clean:
	-$(Q)rm *.pdf *.ps *.dvi *.log *~
