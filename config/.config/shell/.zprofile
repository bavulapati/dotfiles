#!/bin/sh

#profile file. Runs on login. Environmental variables are set here.

unsetopt PROMPT_SP

# Default programs:
export EDITOR="nvim"

# ~/ Clean up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"