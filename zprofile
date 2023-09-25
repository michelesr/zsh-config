# Apple has a /etc/zprofile that tends to override the path and lower the
# precedence of the GNU utils so restore OLD_PATH to recover the path
# as set at the end of ~/.zshenv
PATH="${OLD_PATH}"
unset OLD_PATH
