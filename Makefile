BUILD_DIR=build

install-deps:
	sudo apt-get install pandoc texlive-latex-base texlive-fonts-recommended texlive-extra-utils texlive-latex-extra docker.io docker-compose
	sudo adduser $(USER) docker

install-marp: install-deps
	docker pull marpteam/marp-cli

serve:
	docker run --rm --init -v $(PWD):/home/marp/app -e LANG=$(LANG) -p 8080:8080 -p 37717:37717 marpteam/marp-cli -s .

outline: prepare
	pandoc  outline.md -o $(BUILD_DIR)/outline.pdf

begrippen: prepare
	pandoc --include-in-header=nohyphenation --from markdown_phpextra+pandoc_title_block begrippen.md -o $(BUILD_DIR)/begrippen.pdf

vbegrippen: begrippen
	evince $(BUILD_DIR)/begrippen.pdf

voutline: outline
	evince $(BUILD_DIR)/outline.pdf

clean: 
	rm -rf $(BUILD_DIR)

prepare:
	mkdir -p $(BUILD_DIR)

