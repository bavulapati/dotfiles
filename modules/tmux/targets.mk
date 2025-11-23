$(DESTINATION)/.tmux.conf: modules/tmux/tmux.conf; $(SYMLINK)
tmux: $(DESTINATION)/.tmux.conf
MODULES += tmux
