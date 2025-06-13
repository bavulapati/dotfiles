$(DESTINATION)/.gnupg:
	mkdir -p $@
$(DESTINATION)/.gnupg/gpg.conf: modules/gnupg/gpg.conf | $(DESTINATION)/.gnupg
	$(SYMLINK)
$(DESTINATION)/.gnupg/gpg-agent.conf: modules/gnupg/gpg-agent.conf | $(DESTINATION)/.gnupg/gpg.conf
	$(SYMLINK)
$(DESTINATION)/.gnupg/scdaemon.conf: modules/gnupg/scdaemon.conf | $(DESTINATION)/.gnupg/gpg-agent.conf
	$(SYMLINK)
$(DESTINATION)/Library/LaunchAgents:
	mkdir -p $@
$(DESTINATION)/Library/LaunchAgents/gnupg.gpg-agent.plist: modules/gnupg/gnupg.gpg-agent.plist | $(DESTINATION)/.gnupg/LaunchAgents
	$(SYMLINK)
$(DESTINATION)/Library/LaunchAgents/gnupg.gpg-agent-symlink.plist: modules/gnupg/gnupg.gpg-agent-symlink.plist | $(DESTINATION)/.gnupg/LaunchAgents/gnupg.gpg-agent.plist
	$(SYMLINK)
$(DESTINATION)/.ssh:
	mkdir -p $@
$(DESTINATION)/.ssh/id_rsa_yubikey.pub: modules/gnupg/id_rsa_yubikey.pub | $(DESTINATION)/.ssh
	$(SYMLINK)
$(DESTINATION)/.ssh/config: modules/gnupg/ssh.conf | $(DESTINATION)/.ssh/id_rsa_yubikey.pub
	$(SYMLINK)
gnupg: \
	$(DESTINATION)/.gnupg/gpg-agent.conf
	$(DESTINATION)/Library/LaunchAgents/gnupg.gpg-agent-symlink.plist
	$(DESTINATION)/.ssh/config
	chmod 600 ~/.gnupg/*
	chmod 700 ~/.gnupg
MODULES += gnupg

