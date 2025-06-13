$(DESTINATION)/.gitconfig: modules/git/.gitconfig
	$(SYMLINK)
git: $(DESTINATION)/.gitconfig
MODULES += git

