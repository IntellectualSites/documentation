## Check for typos.
typos:
	tools/check-typos.sh

## Show this help message.
help:
	@awk '/^##/{c=substr($$0,3);next}c&&/^[[:alpha:]][[:alnum:]_-]+:/{print substr($$1,1,index($$1,":")),c}1{c=0}' $(MAKEFILE_LIST) | column -s: -t | sort

#-----------------------------------------------------#

.PHONY: typos help
