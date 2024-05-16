BUILD_DIR=build
PRESENTATIE_DIR=$(BUILD_DIR)/presentatie
PANDOC_IMAGE=pandoc/latex:2.9
METADATA=--metadata author='Steven Speek' --metadata date="$$(LANG=nl_NL.UTF-8 date +'%A %-d %B %Y')"
USER_ID=$(shell id -u):$(shell id -g)
PANDOC_PDF_CMD=docker run --rm --init -v "$(PWD):/data" -u $(USER_ID)  $(PANDOC_IMAGE) --include-in-header=header.tex --from markdown layout.yaml 
PANDOC_HTML_CMD=docker run --rm --init -v "$(PWD):/data" -u $(USER_ID) $(PANDOC_IMAGE) --standalone --css=css/custom.css --from markdown --to html
MARP=marpteam/marp-cli:v3.1.0
MARP_CMD=docker run --rm --init -e MARP_USER=$(USER_ID) -v $(PWD):/home/marp/app/ -e LANG=$(LANG) $(MARP) --allow-local-files

default: clean all

all: print presentatie

print: begrippen oefeningen verderleren samenvatting sneltoetsenperonderdeel begrippenperonderdeel hoedecursustevolgen

install-deps:
	sudo apt-get install docker.io docker-compose
	sudo adduser $(USER) docker

serve:
	docker run --rm --init -v $(PWD):/home/marp/app -e LANG=$(LANG) -p 8080:8080 -p 37717:37717 $(MARP) --allow-local-files -s .

presentatie: prepare hbegrippen hsamenvatting hoefeningen hreadme hverderleren hbegrippenperonderdeel hsneltoetsenperonderdeel hhoedecursustevolgen
	$(MARP_CMD) presentatie/inleiding.md -o $(PRESENTATIE_DIR)/inleiding.html
	$(MARP_CMD) presentatie/rondleiding-gnome.md -o $(PRESENTATIE_DIR)/rondleiding-gnome.html
	$(MARP_CMD) presentatie/toepassingen-starten-en-afsluiten.md -o $(PRESENTATIE_DIR)/toepassingen-starten-en-afsluiten.html
	$(MARP_CMD) presentatie/firefox.md -o $(PRESENTATIE_DIR)/firefox.html
	$(MARP_CMD) presentatie/bestanden.md -o $(PRESENTATIE_DIR)/bestanden.html
	$(MARP_CMD) presentatie/vensters-en-werkbladen.md -o $(PRESENTATIE_DIR)/vensters-en-werkbladen.html
	$(MARP_CMD) presentatie/toepassingen-installeren.md -o $(PRESENTATIE_DIR)/toepassingen-installeren.html
	$(MARP_CMD) presentatie/instellingen.md -o $(PRESENTATIE_DIR)/instellingen.html
	cd build && zip -rq presentatie.zip presentatie

hoedecursustevolgen: prepare
	$(PANDOC_PDF_CMD) hoe-de-cursus-te-volgen.md -o $(BUILD_DIR)/hoe-de-cursus-te-volgen.pdf

begrippen: prepare
	$(PANDOC_PDF_CMD) begrippen.md -o $(BUILD_DIR)/begrippen.pdf

begrippenperonderdeel: prepare
	$(PANDOC_PDF_CMD) begrippen-per-onderdeel.md -o $(BUILD_DIR)/begrippen-per-onderdeel.pdf

sneltoetsenperonderdeel: prepare
	$(PANDOC_PDF_CMD) sneltoetsen-per-onderdeel.md -o $(BUILD_DIR)/sneltoetsen-per-onderdeel.pdf

oefeningen: prepare
	$(PANDOC_PDF_CMD) oefeningen.md -o $(BUILD_DIR)/oefeningen.pdf

samenvatting: prepare
	$(PANDOC_PDF_CMD) samenvatting.md -o $(BUILD_DIR)/samenvatting.pdf

verderleren: prepare
	$(PANDOC_PDF_CMD) verder-leren.md -o $(BUILD_DIR)/verder-leren.pdf

hhoedecursustevolgen: prepare relative_urls
	$(PANDOC_HTML_CMD) $(BUILD_DIR)/hoe-de-cursus-te-volgen.relative-url.md -o $(PRESENTATIE_DIR)/hoe-de-cursus-te-volgen.html $(METADATA)

hbegrippen: prepare
	$(PANDOC_HTML_CMD) begrippen.md -o $(PRESENTATIE_DIR)/begrippen.html $(METADATA)

hbegrippenperonderdeel: prepare
	$(PANDOC_HTML_CMD) begrippen-per-onderdeel.md -o $(PRESENTATIE_DIR)/begrippen-per-onderdeel.html $(METADATA)

hsneltoetsenperonderdeel: prepare
	$(PANDOC_HTML_CMD) sneltoetsen-per-onderdeel.md -o $(PRESENTATIE_DIR)/sneltoetsen-per-onderdeel.html $(METADATA)

hoefeningen: prepare
	$(PANDOC_HTML_CMD) oefeningen.md -o $(PRESENTATIE_DIR)/oefeningen.html --shift-heading-level-by=1 $(METADATA)

hsamenvatting: prepare
	$(PANDOC_HTML_CMD) samenvatting.md -o $(PRESENTATIE_DIR)/samenvatting.html --shift-heading-level-by=1 $(METADATA)

relative_urls:
	sed -e 's|https://slspeek.github.io/linux-beginners-cursus/||g' README.md |sed -e '1 d'> $(BUILD_DIR)/README.relative-url.md
	sed -e 's|https://slspeek.github.io/linux-beginners-cursus/||g' hoe-de-cursus-te-volgen.md > $(BUILD_DIR)/hoe-de-cursus-te-volgen.relative-url.md

hreadme: prepare relative_urls
	$(PANDOC_HTML_CMD)  $(BUILD_DIR)/README.relative-url.md -o $(PRESENTATIE_DIR)/index.html --metadata title="Linux beginnerscursus" 

hverderleren: prepare
	$(PANDOC_HTML_CMD) verder-leren.md -o $(PRESENTATIE_DIR)/verder-leren.html $(METADATA)

vbegrippen: begrippen
	evince $(BUILD_DIR)/begrippen.pdf

voefeningen: oefeningen
	evince $(BUILD_DIR)/oefeningen.pdf

vsamenvatting: samenvatting
	evince $(BUILD_DIR)/samenvatting.pdf

vverderleren: verderleren
	evince $(BUILD_DIR)/verder-leren.pdf

clean: 
	rm -rf $(BUILD_DIR)

diagram: prepare
	docker run --user $(shell id -u):$(shell id -g) --workdir /work -v $(PWD):/work --rm -i nshine/dot dot -T png -o build/presentatie/img/gnome-states.png  diagram/gnome-states.gv

prepare:
	mkdir -p $(PRESENTATIE_DIR)
	cp -r img css $(PRESENTATIE_DIR)

