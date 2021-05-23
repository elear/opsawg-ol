
DOCS=	draft-lear-opsawg-ol.txt \
	draft-lear-opsawg-ol.xml \
	draft-lear-opsawg-ol.html

all: $(DOCS)

%.xml:	%.mkd
	kramdown-rfc2629 $< > $@
%.html %.txt:	%.xml
	xml2rfc --html $<
	xml2rfc --text $<


