# MD files
MD_PERUS_FINAL= diat_peruskoulutusteoria.md
MD_JATKO_FINAL = diat_jatkokoulutusteoria.md
MD_LISENSSI_FINAL = diat_lisenssiteoria.md

MD_PERUS_TARGETS = $(shell cat outline_peruskoulutus.md)
MD_JATKO_TARGETS = $(shell cat outline_jatkokoulutus.md)
MD_LISENSSI_TARGETS = $(shell cat outline_lisenssiteoria.md)

all: $(MD_PERUS_FINAL) $(MD_JATKO_FINAL) $(MD_LISENSSI_FINAL)

perus: $(MD_PERUS_FINAL)

jatko: $(MD_JATKO_FINAL)

lisenssi: $(MD_LISENSSI_FINAL)

$(MD_PERUS_FINAL): $(MD_PERUS_TARGETS)
	rm -f $@
	cat $^ >>$@

$(MD_JATKO_FINAL): $(MD_JATKO_TARGETS)
	rm -f $@
	cat $^ >>$@

$(MD_LISENSSI_FINAL): $(MD_LISENSSI_TARGETS)
	rm -f $@
	cat $^ >>$@

clean:
	rm -f $(MD_PERUS_FINAL) $(MD_JATKO_FINAL)

.DEFAULT_GOAL := all

.PHONY: clean md
