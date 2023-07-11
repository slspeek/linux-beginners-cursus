BUILD_DIR=build
PANDOC_CMD=pandoc --include-in-header=header.tex --from markdown layout.yaml 
install-deps:
	sudo apt-get install pandoc texlive-lang-european texlive-latex-base texlive-fonts-recommended texlive-extra-utils texlive-latex-extra docker.io docker-compose
	sudo adduser $(USER) docker

install-marp: install-deps
	docker pull marpteam/marp-cli

serve:
	docker run --rm --init -v $(PWD):/home/marp/app -e LANG=$(LANG) -p 8080:8080 -p 37717:37717 marpteam/marp-cli -s .

presentatie: prepare
	docker run --rm --init -e MARP_USER="$(id -u):$(id -g)" -v $(PWD):/home/marp/app/ -e LANG=$(LANG) marpteam/marp-cli --allow-local-files presentatie.md --pdf -o $(BUILD_DIR)/presentatie.pdf

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
	mkdir -p $(BUILD_DIR)

all: begrippen samenvatting presentatie

