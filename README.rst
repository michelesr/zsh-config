zsh-config
==========

My **zshrc** (and **tmux**) configuration.

This repo has an `osx` branch where I keep the configuration I use on Mac OS X, while the `master` branch is for GNU/Linux systems.

tmux_ssh & screen_ssh
=====================

Source one of them on your servers to automatically load tmux or screen on your ssh sessions.

tmux_always
===========

If instead you want to load *tmux* on every session (auto reattaching session if present), source `tmux_always` !

tmux_arch_pathfix
=================

I added a script to re-source `.zshenv` on tmux start, this is a workaround for a bug i noticed in Arch Linux, that overrides `PATH` environment variable on tmux load. With this script, you make sure to re-set `PATH` right after tmux load (but you need to set the path in the `.zshenv` too to make this work!)

**EDIT**: seems like this is not required anymore, but I'll leave it, cuz you never know! However, sometimes some global configuration files may override your `PATH` environment variable, so you may want to use it anyway as a workaround.

xclip-aliases
=============

This is a set of aliases to deal with different buffer (X for GNU/Linux, OS X
buffer, and tmux). `xin` and `xout` are not available in `osx` branch.

In GNU/Linux environments, be sure to have the `xclip` command available.

**Copy** text to X **primary** buffer ::

	echo "ciao" | xin

**Copy** text to **clipboard** ::

	echo "ciao" | cin

**Print** X **primary** buffer ::

	xout

**Print clipboard** ::

	cout

**Copy** X **primary** buffer to **clipboard** ::

	xtoc

**Copy** **clipboard** to X **primary** buffer ::

	ctox
..
