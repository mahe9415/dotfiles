#!/bin/bash

	xcode-select –install
    # Install Brew
    curl -fsS \'https://raw.githubusercontent.com/Homebrew/install/master/install' |ruby
    

./symlink-setup.sh

# ssh-keygen -t rsa -b 4096 -C "mail@ashiknesin.com"