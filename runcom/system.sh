# Resolve EXTRA_DIR (assuming ~/.extra on distros without readlink and/or $BASH_SOURCE/$0)

READLINK=$(which greadlink 2> /dev/null || which readlink 2> /dev/null)
CURRENT_SCRIPT=$BASH_SOURCE

if [[ -n $CURRENT_SCRIPT && -x "$READLINK" ]]; then
  SCRIPT_PATH=$($READLINK -f "$CURRENT_SCRIPT")
  EXTRA_DIR=$(dirname "$(dirname "$SCRIPT_PATH")")
elif [ -d "$HOME/.extra" ]; then
  EXTRA_DIR="$HOME/.extra"
else
  echo "Unable to find dotfiles, exiting."
  return # `exit 1` would quit the shell itself
fi

# Finally we can source the dotfiles (order matters)

for DOTFILE in "$EXTRA_DIR"/system/.*; do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done

# Clean up

unset READLINK CURRENT_SCRIPT SCRIPT_PATH DOTFILE

prepend-path "$EXTRA_DIR/bin"
