
DOCS=	draft-ietf-opsawg-ol.txt \
	draft-ietf-opsawg-ol.xml \
	draft-ietf-opsawg-ol.html

all: $(DOCS)

%.xml:	%.mkd
	kramdown-rfc2629 --v3  $< > $@
%.html %.txt:	%.xml
	xml2rfc --html $<
	xml2rfc --text $<


