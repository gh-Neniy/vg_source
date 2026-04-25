SRC=$(shell find . -type f -name '*.neniy')

DIR=../.minecraft/saves/Valter's Going/datapacks

all:
	@neniy -t 1.21.11 -d "$(DIR)" $(SRC)

files:
	@find . -type f \( -name '*.json' -o -name '*.mcmeta' \) | while read -r file; do \
		mkdir -p "$(DIR)/$$(dirname "$$file")"; \
		cp "$$file" "$(DIR)/$$file"; \
	done

clean:
	rm -rf output

.PHONY: all clean
