simple-zshrc
============

My simple **zshrc** configuration

tmux_ssh & screen_ssh
=====================

There's also script to load *screen* or *tmux* on ssh sessions. Source one of them on your .zprofile!

tmux_always
===========

If instead you want to load *tmux* on every session (auto reattaching session if present), source tmux_always ! 

tmux_arch_pathfix
=================

I added a script to re-source .zshenv on tmux start, this is a workaround for a bug i noticed in Arch Linux, that override PATH environment variable on tmux load. With this script, you make sure to re-set PATH right after tmux load (but you need to set the path in the .zshenv too to make this work!)

xclip-aliases
=============

Requirements: *xclip*

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
