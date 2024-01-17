BUILD_DIR=build
PRESENTATIE_DIR=$(BUILD_DIR)/presentatie
PANDOC_IMAGE=pandoc/latex:2.9
USER_ID=$(shell id -u):$(shell id -g)
PANDOC_PDF_CMD=docker run --rm --init -v "$(PWD):/data" -u $(USER_ID)  $(PANDOC_IMAGE) --include-in-header=header.tex --from markdown layout.yaml 
PANDOC_HTML_CMD=docker run --rm --init -v "$(PWD):/data" -u $(USER_ID) $(PANDOC_IMAGE) --standalone --css=css/custom.css --from markdown --to html
MARP=marpteam/marp-cli:v3.1.0
MARP_CMD=docker run --rm --init -e MARP_USER=$(USER_ID) -v $(PWD):/home/marp/app/ -e LANG=$(LANG) $(MARP) --allow-local-files

all: begrippen oefeningen presentatie verderleren samenvatting

install-deps:
	sudo apt-get install docker.io docker-compose
	sudo adduser $(USER) docker

serve:
	docker run --rm --init -v $(PWD):/home/marp/app -e LANG=$(LANG) -p 8080:8080 -p 37717:37717 $(MARP) --allow-local-files -s .

presentatie: prepare hbegrippen hsamenvatting hoefeningen hreadme hverderleren
	$(MARP_CMD) presentatie/inleiding.md -o $(PRESENTATIE_DIR)/inleiding.html
	$(MARP_CMD) presentatie/rondleiding-gnome.md -o $(PRESENTATIE_DIR)/rondleiding-gnome.html
	$(MARP_CMD) presentatie/toepassingen-starten-en-afsluiten.md -o $(PRESENTATIE_DIR)/toepassingen-starten-en-afsluiten.html
	$(MARP_CMD) presentatie/firefox.md -o $(PRESENTATIE_DIR)/firefox.html
	$(MARP_CMD) presentatie/bestanden.md -o $(PRESENTATIE_DIR)/bestanden.html
	$(MARP_CMD) presentatie/vensters-en-werkbladen.md -o $(PRESENTATIE_DIR)/vensters-en-werkbladen.html
	$(MARP_CMD) presentatie/toepassingen-installeren.md -o $(PRESENTATIE_DIR)/toepassingen-installeren.html
	$(MARP_CMD) presentatie/instellingen.md -o $(PRESENTATIE_DIR)/instellingen.html
	cd build && zip -rq presentatie.zip presentatie

begrippen: prepare
	$(PANDOC_PDF_CMD) begrippen.md -o $(BUILD_DIR)/begrippen.pdf

oefeningen: prepare
	$(PANDOC_PDF_CMD) oefeningen.md -o $(BUILD_DIR)/oefeningen.pdf

samenvatting: prepare
	$(PANDOC_PDF_CMD) samenvatting.md -o $(BUILD_DIR)/samenvatting.pdf

verderleren: prepare
	$(PANDOC_PDF_CMD) verder-leren.md -o $(BUILD_DIR)/verder-leren.pdf

hbegrippen: prepare
	$(PANDOC_HTML_CMD) begrippen.md -o $(PRESENTATIE_DIR)/begrippen.html

hoefeningen: prepare
	$(PANDOC_HTML_CMD) oefeningen.md -o $(PRESENTATIE_DIR)/oefeningen.html

hsamenvatting: prepare
	$(PANDOC_HTML_CMD) samenvatting.md -o $(PRESENTATIE_DIR)/samenvatting.html

hreadme: prepare
	$(PANDOC_HTML_CMD) README.md -o $(PRESENTATIE_DIR)/index.html

hverderleren: prepare
	$(PANDOC_HTML_CMD) verder-leren.md -o $(PRESENTATIE_DIR)/verder-leren.html

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

