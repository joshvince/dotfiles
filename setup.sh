# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# install homebrew -- CAREFUL, THIS DOWNLOADS XCODE COMMAND LINE TOOLS!!!
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew doctor
brew update

# install all the files.
cd $HOME
brew bundle

# Make a blank credentials file to store secrets
touch $HOME/.credentials

# replace the auto-generated zshrc file with my custom one.
rm $HOME/.zshrc
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc

#symlinks from here to the home directory
ln -s $HOME/dotfiles/.gitconfig $HOME/.gitconfig
ln -s $HOME/dotfiles/.gitmessage.txt $HOME/.gitmessage.txt
ln -s $HOME/dotfiles/.gitignore_global $HOME/.gitignore_global
ln -s $HOME/dotfiles/.macosdefaults.sh $HOME/.macosdefaults.sh
ln -s $HOME/dotfiles/Brewfile $HOME/Brewfile
