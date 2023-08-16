BUILD_DIR=build
PRESENTATIE_DIR=$(BUILD_DIR)/presentatie
PANDOC_IMAGE=pandoc/latex:2.9
PANDOC_CMD=docker run --rm --init -v "$(PWD):/data" -u $(id -u):$(id -g) $(PANDOC_IMAGE) --include-in-header=header.tex --from markdown layout.yaml 
MARP=marpteam/marp-cli:v3.1.0

install-deps:
	sudo apt-get install docker.io docker-compose
	sudo adduser $(USER) docker

serve:
	docker run --rm --init -v $(PWD):/home/marp/app -e LANG=$(LANG) -p 8080:8080 -p 37717:37717 $(MARP) --allow-local-files -s .

presentatie: prepare
	docker run --rm --init -e MARP_USER="$(id -u):$(id -g)" -v $(PWD):/home/marp/app/ -e LANG=$(LANG) $(MARP) --allow-local-files presentatie.md -o $(PRESENTATIE_DIR)/presentatie.html
	cp -r img $(PRESENTATIE_DIR)
	cd build && zip -r presentatie.zip presentatie

begrippen: prepare
	$(PANDOC_CMD) begrippen.md -o $(BUILD_DIR)/begrippen.pdf

oefeningen: prepare
	$(PANDOC_CMD) oefeningen.md -o $(BUILD_DIR)/oefeningen.pdf

samenvatting: prepare
	$(PANDOC_CMD) samenvatting.md -o $(BUILD_DIR)/samenvatting.pdf

vbegrippen: begrippen
	evince $(BUILD_DIR)/begrippen.pdf

voefeningen: oefeningen
	evince $(BUILD_DIR)/oefeningen.pdf

vsamenvatting: samenvatting
	evince $(BUILD_DIR)/samenvatting.pdf

clean: 
	rm -rf $(BUILD_DIR)

prepare:
	mkdir -p $(BUILD_DIR)/presentatie

all: begrippen oefeningen presentatie samenvatting

