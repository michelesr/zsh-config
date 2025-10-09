#!/usr/bin/env bash
# this script is used with the EDITOR and VISUAL envvars

source ~/Projects/zsh-config/nvim_helpers

jump_to_nvim
nvim_remote_tab_wait "$@"
