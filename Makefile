SRC=$(shell find . -type f -name '*.neniy')

DIR=../.minecraft/saves/Valter's Going/datapacks

all:
	@neniy -t 1.21.11 -d "$(DIR)" $(SRC)

clean:
	rm -rf output

.PHONY: all clean
