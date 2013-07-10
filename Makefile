XML2RFC=./xml2rfc.tcl
VERSION=05

all:	drafts

draft-bhandari-dhc-dhcp-class-based-pd: draft-bhandari-dhc-dhcp-class-based-pd-$(VERSION).xml 
	$(XML2RFC) $< $@-$(VERSION).txt

drafts: draft-bhandari-dhc-dhcp-class-based-pd

.PHONY: clean draft commit
clean:
	/bin/rm -f *.txt

