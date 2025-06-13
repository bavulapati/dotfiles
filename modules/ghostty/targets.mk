$(DESTINATION)/.config/ghostty:
	mkdir -p $@
$(DESTINATION)/.config/ghostty/config: modules/ghostty/config | $(DESTINATION)/.config/ghostty
	$(SYMLINK)
ghostty: $(DESTINATION)/.config/ghostty/config
MODULES += ghostty

