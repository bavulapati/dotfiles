LAZYGITDIR = '$(DESTINATION)/Library/Application\ Support/lazygit'
$(LAZYGITDIR):
	mkdir -p $@
$(LAZYGITDIR)/config.yml: modules/lazygit/config.yml | $(LAZYGITDIR)
	$(SYMLINK)
lazygit: $(LAZYGITDIR)/config.yml
MODULES += lazygit

