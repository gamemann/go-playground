CC = clang

ROOT_DIR = $(PWD)

BUILD_DIR = $(ROOT_DIR)/build

all: go_and_c

go_and_c: go_and_c_basic01 go_and_c_basic02

go_and_c_basic01:
	$(MAKE) -C go_and_c/basic01

go_and_c_basic02:
	$(MAKE) -C go_and_c/basic02

clean:
	find $(BUILD_DIR) -type f ! -name ".*" -exec rm -f {} +

.PHONY: go_and_c