.PHONY : cls clean all distclean zip

NAME = hnuthesis
UTREE = $(shell kpsewhich --var-value TEXMFHOME)
LOCAL = $(shell kpsewhich --var-value TEXMFLOCAL)


all : main

main : $(NAME).cls
	latexmk -xelatex -shell-escape -use-make

clean :
	latexmk -c

distclean :
	latexmk -C