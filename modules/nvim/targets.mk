$(DESTINATION)/.config:
	mkdir -p $@
$(DESTINATION)/.config/nvim: modules/nvim/starter | $(DESTINATION)/.config
	$(SYMLINK)
nvim: $(DESTINATION)/.config/nvim
MODULES += nvim
