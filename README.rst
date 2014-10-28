simple-zshrc
============

My simple zshrc configuration

There's also script to load screen or tmux on ssh sessions. Source one of them on your .zprofile!

If instead you want to load tmux on every session (auto reattaching session if present), source tmux_always ! 

I added a script to re-source .zshenv on tmux start, this is a workaround for a bug i noticed in arch linux, that override PATH environment variable on tmux load. With this script, you make sure to re-set PATH right after tmux load (but you need to set the path in the .zshenv too to make this work!)

xclip-aliases
=============

Require: xclip

To install, source xclip_aliases ::

        # copy text to x primary buffer
	echo "ciao" | xin 
        # copy text to clipboard
	echo "ciao" | cin 
	# print x primary buffer
	xout
	# print clipboard
	cout
	# copy x primary buffer to clipboard
	xtoc
	# copy clipboard to x primary buffer
	ctox

..
