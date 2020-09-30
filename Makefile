all:
ifdef v
	kramdown-rfc2629 version-$(v)/draft-kunze-coinrg-transport-issues-$(v).mkd > version-$(v)/draft-kunze-coinrg-transport-issues-$(v).xml
	xml2rfc version-$(v)/draft-kunze-coinrg-transport-issues-$(v).xml
else
	@echo 'State version using v='
endif
	

.PHONY: clean
clean:
	rm draft-kunze-coinrg-transport-issues-*.xml