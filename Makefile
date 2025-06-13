include utilities/os.mk

.DEFAULT_GOAL = all
PLATFORMS = macos-arm64
PLATFORM = $(PLATFORM_OS)-$(PLATFORM_ARCH)
DESTINATION ?= $(HOME)

define SYMLINK
ln -f -s $(realpath $<) $@
endef

include modules/zsh/targets.mk
include modules/ghostty/targets.mk
include modules/nvim/targets.mk
include modules/gnupg/targets.mk
include modules/git/targets.mk

.PHONY: all bootstrap help $(MODULES)
all: bootstrap $(MODULES)

bootstrap: bootstrap.sh
	./$< $@

help:
	@echo " ______   _______  _______  _______  ___   ___      _______  _______"
	@echo "|      | |       ||       ||       ||   | |   |    |       ||       |"
	@echo "|  _    ||   _   ||_     _||    ___||   | |   |    |    ___||  _____|"
	@echo "| | |   ||  | |  |  |   |  |   |___ |   | |   |    |   |___ | |_____ "
	@echo "| |_|   ||  |_|  |  |   |  |    ___||   | |   |___ |    ___||_____  |"
	@echo "|       ||       |  |   |  |   |    |   | |       ||   |___  _____| |"
	@echo "|______| |_______|  |___|  |___|    |___| |_______||_______||_______|"
	@echo ""
	@echo "Platform: $(PLATFORM)"
	@echo ""
	@echo "Supported modules:"
	@echo ""
	@echo "  $(MODULES)"
	@echo ""
	@echo "Supported platforms:"
	@echo ""
	@echo "  $(PLATFORMS)"
	@echo ""
	@echo "Commands:"
	@echo ""
	@echo "  make all"
	@echo "  make bootstrap"
	@echo "  make <module>"
