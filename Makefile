SRC=$(shell find . -type f -name '*.neniy')

DIR=../.minecraft/saves/Valter's Going/datapacks

all:
	@neniy -v 1.21.11 -d "$(DIR)" $(SRC)

files:
	@find . -type f \( -name '*.json' -o -name '*.mcmeta' \) | while read -r file; do \
		mkdir -p "$(DIR)/$$(dirname "$$file")"; \
		cp "$$file" "$(DIR)/$$file"; \
	done

.PHONY: all files
