.PHONY: all

all: draft-ietf-ace-oauth-authz.txt

draft-ietf-ace-oauth-authz.txt: draft-ietf-ace-oauth-authz.xml
	xml2rfc draft-ietf-ace-oauth-authz.xml && \
	xml2rfc --html draft-ietf-ace-oauth-authz.xml &&\
	git add draft-ietf-ace-oauth-authz.* && \
	git commit && git push

.PHONY: clean
clean:
	-rm draft-ietf-ace-oauth-authz.txt
