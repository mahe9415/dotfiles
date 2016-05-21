#!/bin/bash

if command -v 'brew' &> /dev/null; then
	# Homebrew is installed
	echo "  Installing Homebrew for you."
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# more formualae
brew tap phinze/homebrew-cask || true
brew tap caskroom/versions || true
brew install brew-cask


# usefull stuff

usefull_pkg=(
	bash
	zsh
	coreutils
	ack
	wget
	unrar
	ffmpeg
	trash
	cmus
	mycli
)

usefull_cask=(
	iterm2
	the-unarchiver
	diffmerge
	caffeine
	spectacle
	imageoptim
	teamviewer
)

brew install ${usefull_pkg[@]}

brew cask install ${usefull_cask[@]}

# dev stuffs

brew install git imagemagick heroku-toolbelt node mysql dnsmasq

# if test ! "$(which rbenv)"; then
#   echo "  Installing rbenv for you."
#   brew install rbenv > /tmp/rbenv-install.log
# fi

# if test ! "$(which ruby-build)"; then
#   echo "  Installing ruby-build for you."
#   brew install ruby-build > /tmp/ruby-build-install.log
# fi

brew cask install sublime-text3 sequel-pro virtualbox gitx


# chat, books, notes, documents, mail, etc
brew cask install evernote skype slack limechat\
	 kindle dropbox flux rescuetime miro-video-converter

# browser
brew cask install torbrowser google-chrome-canary firefox


# watch and download stuff
brew install youtube-dl aria2
brew cask install vlc vox utorrent

# quick look plugins - https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json \
  	 qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook \
     suspicious-package

# Install fonts.
brew tap caskroom/fonts
brew cask install font-hack font-source-code-pro

# clean things up
brew cleanup
brew cask cleanup