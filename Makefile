.PHONY: all
all: base psql9.4 psql9.5 psql9.6 psql10 psql11

.PHONY: base
base:
	docker build . --tag pg_client:latest

.PHONY: psql11
psql11:
	cd psql11 && docker build . --tag psql11:latest

.PHONY: psql10
psql10:
	cd psql10 && docker build . --tag psql10:latest

.PHONY: psql9.6
psql9.6:
	cd psql9.6 && docker build . --tag psql9.6:latest

.PHONY: psql9.5
psql9.5:
	cd psql9.5 && docker build . --tag psql9.5:latest

.PHONY: psql9.4
psql9.4:
	cd psql9.4 && docker build . --tag psql9.4:latest
