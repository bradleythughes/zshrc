#!/bin/zsh

# move existing ~/.zshrc out of the way
suffix=$(date "+%Y%m%d%H%M")
if test -f ~/.zshrc
then
    echo "existing ~/.zshrc moved to ~/dot-zshrc-$suffix"
    mv -v ~/.zshrc ~/dot-zshrc-$suffix
fi

# create ~/.zshrc symlink
ln -sv "$PWD/dot-zshrc" ~/.zshrc

# inform the user that the new ~/.zshrc will use the existing ~/.zshrc-config
if test -f ~/.zshrc-config
then
    echo
    echo "NOTE: Your existing ~/.zshrc-config will be read by the new ~/.zshrc"
    echo
fi

