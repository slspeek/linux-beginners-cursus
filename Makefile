BUILD_DIR=build
PRESENTATIE_DIR=$(BUILD_DIR)/presentatie
PANDOC_CMD=pandoc --include-in-header=header.tex --from markdown layout.yaml 
MARP=marpteam/marp-cli:v3.1.0

install-deps: install-pandoc
	sudo apt-get install docker.io docker-compose
	sudo adduser $(USER) docker

install-pandoc:
	sudo apt-get update
	sudo apt-get install pandoc texlive-lang-european texlive-latex-base texlive-fonts-recommended texlive-extra-utils texlive-latex-extra

install-marp: install-deps
	docker pull marpteam/marp-cli:v3.1.0

serve:
	docker run --rm --init -v $(PWD):/home/marp/app -e LANG=$(LANG) -p 8080:8080 -p 37717:37717 $(MARP) --allow-local-files -s .

presentatie: prepare
	docker run --rm --init -e MARP_USER="$(id -u):$(id -g)" -v $(PWD):/home/marp/app/ -e LANG=$(LANG) $(MARP) --allow-local-files presentatie.md --pdf -o $(BUILD_DIR)/presentatie.pdf

hpresentatie: prepare
	docker run --rm --init -e MARP_USER="$(id -u):$(id -g)" -v $(PWD):/home/marp/app/ -e LANG=$(LANG) $(MARP) --allow-local-files presentatie.md -o $(PRESENTATIE_DIR)/presentatie.html
	cp -r img $(PRESENTATIE_DIR)

samenvatting: prepare
	$(PANDOC_CMD) samenvatting.md -o $(BUILD_DIR)/samenvatting.pdf

begrippen: prepare
	$(PANDOC_CMD) begrippen.md -o $(BUILD_DIR)/begrippen.pdf

vbegrippen: begrippen
	evince $(BUILD_DIR)/begrippen.pdf

vsamenvatting: samenvatting
	evince $(BUILD_DIR)/samenvatting.pdf

clean: 
	rm -rf $(BUILD_DIR)

prepare:
	mkdir -p $(BUILD_DIR)/presentatie

all: begrippen samenvatting presentatie hpresentatie

