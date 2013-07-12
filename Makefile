XML2RFC=./xml2rfc.tcl
VERSION=05

all:	drafts

draft-bhandari-dhc-dhcp-class-based-pd: draft-bhandari-dhc-dhcp-class-based-pd-$(VERSION).xml 
	$(XML2RFC) $< $@-$(VERSION).txt

draft-lepape-6man-prefix-metadata: draft-lepape-6man-prefix-metadata-00.xml 
	$(XML2RFC) $< $@-00.txt

drafts: draft-bhandari-dhc-dhcp-class-based-pd
	draft-lepape-6man-prefix-metadata

.PHONY: clean draft commit
clean:
	/bin/rm -f *.txt

