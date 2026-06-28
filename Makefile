
DOCS=	draft-ietf-iotops-ol.txt \
	draft-ietf-iotops-ol.xml \
	draft-ietf-iotops-ol.html

all: $(DOCS)

%.xml:	%.mkd
	kramdown-rfc2629 --v3  $< > $@
%.html %.txt:	%.xml
	xml2rfc --html $<
	xml2rfc --text $<


