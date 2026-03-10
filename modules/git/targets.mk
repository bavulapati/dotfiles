$(DESTINATION)/.gitconfig: modules/git/.gitconfig
	$(SYMLINK)
$(DESTINATION)/.gitignore: modules/git/.gitignore
	$(SYMLINK)
git: \
	$(DESTINATION)/.gitconfig \
	$(DESTINATION)/.gitignore

MODULES += git

