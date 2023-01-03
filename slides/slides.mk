
$(eval $(begin_Makefile))
$(eval $(positioning_parameters_show))
$(eval $(web_parameters_show))

#
# Ces variables sont utilisées pour paramétriser la compilation.
#

NUMBERS:=00-organisation 01-separation 02-CIA 03-controle_d_acces 04-environnement
BASE_FILE_NAME:=expose
COMPILATION_FLAGS:=
FORMATION:=securite
TITRE:=Presentations
OLD_LATEX:=$(LATEX)
LATEX:=pdflatex --shell-escape 

$(eval $(rules_standalone))

$(info $(rules_standalone))
LATEX:=$(OLD_LATEX)

$(eval $(end_Makefile))
