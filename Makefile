BUILD_DIR=build
PRESENTATIE_DIR=$(BUILD_DIR)/presentatie
PANDOC_IMAGE=pandoc/latex:2.9
USER_ID=$(shell id -u):$(shell id -g)
PANDOC_PDF_CMD=docker run --rm --init -v "$(PWD):/data" -u $(USER_ID)  $(PANDOC_IMAGE) --include-in-header=header.tex --from markdown layout.yaml 
PANDOC_HTML_CMD=docker run --rm --init -v "$(PWD):/data" -u $(USER_ID) $(PANDOC_IMAGE) --standalone --from markdown --to html
MARP=marpteam/marp-cli:v3.1.0
MARP_CMD=docker run --rm --init -e MARP_USER=$(USER_ID) -v $(PWD):/home/marp/app/ -e LANG=$(LANG) $(MARP) --allow-local-files

all: begrippen oefeningen presentatie samenvatting

install-deps:
	sudo apt-get install docker.io docker-compose
	sudo adduser $(USER) docker

serve:
	docker run --rm --init -v $(PWD):/home/marp/app -e LANG=$(LANG) -p 8080:8080 -p 37717:37717 $(MARP) --allow-local-files -s .

presentatie: prepare hbegrippen hsamenvatting hoefeningen
	$(MARP_CMD) presentatie.md -o $(PRESENTATIE_DIR)/presentatie.html
	cd build && zip -rq presentatie.zip presentatie

begrippen: prepare
	$(PANDOC_PDF_CMD) begrippen.md -o $(BUILD_DIR)/begrippen.pdf

oefeningen: prepare
	$(PANDOC_PDF_CMD) oefeningen.md -o $(BUILD_DIR)/oefeningen.pdf

samenvatting: prepare
	$(PANDOC_PDF_CMD) samenvatting.md -o $(BUILD_DIR)/samenvatting.pdf

hbegrippen: prepare
	$(PANDOC_HTML_CMD) begrippen.md -o $(PRESENTATIE_DIR)/begrippen.html

hoefeningen: prepare
	$(PANDOC_HTML_CMD) oefeningen.md -o $(PRESENTATIE_DIR)/oefeningen.html

hsamenvatting: prepare
	$(PANDOC_HTML_CMD) samenvatting.md -o $(PRESENTATIE_DIR)/samenvatting.html



vbegrippen: begrippen
	evince $(BUILD_DIR)/begrippen.pdf

voefeningen: oefeningen
	evince $(BUILD_DIR)/oefeningen.pdf

vsamenvatting: samenvatting
	evince $(BUILD_DIR)/samenvatting.pdf

clean: 
	rm -rf $(BUILD_DIR)

prepare:
	mkdir -p $(PRESENTATIE_DIR)
	cp -r img $(PRESENTATIE_DIR)

