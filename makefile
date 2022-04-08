################################################################
## Synchronize web site on the server

include ${RSAT}/makefiles/util.mk
MAKEFILE=makefile

################################################################
## Clean temporary files created by emacs
clean:
	find . -name '*~' -exec rm {} \;
	find . -name '.#*' -exec rm {} \;
	find . -name '.DS_Store' -exec rm {} \;


################################################################
## Publish on the web site
TO_SYNC=*
publish: clean
	git push

################################################################
## Browse the Web site
#BROWSER=firefox
LOCAL=README.html
local:
	open  ${LOCAL}

#WEB_URL=http://pedagogix-tagc.univ-mrs.fr/courses/SBBCU16L_cisreg
WEB_URL=https://rsa-tools.github.io/using-RSAT/
web:
	open  ${WEB_URL}

