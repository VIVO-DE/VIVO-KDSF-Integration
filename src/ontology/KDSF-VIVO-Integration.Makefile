## Customize Makefile settings for KDSF-VIVO-Integration
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile
$(ONT).owl: $(ONT)-full.owl
	$(ROBOT) annotate --input $< --ontology-iri $(URIBASE) $(ANNOTATE_ONTOLOGY_VERSION) \
		convert -o $@.tmp.owl && mv $@.tmp.owl $@

$(ONT).ttl: $(ONT)-full.owl
	$(ROBOT) annotate --input $< --ontology-iri $(URIBASE) $(ANNOTATE_ONTOLOGY_VERSION) \
		convert --check false -f ttl -o $@.tmp.ttl && mv $@.tmp.ttl $@
