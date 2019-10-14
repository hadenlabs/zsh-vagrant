#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install vagrant for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#

LIGHT_GREEN='\033[1;32m'
CLEAR='\033[0m'


function vagrant::install {
    echo -e "${CLEAR}${LIGHT_GREEN} Install vagrant ${CLEAR}"
    if [[ $(uname) == 'Darwin' ]]; then
        # shellcheck source=/dev/null
        brew install vagrant
    else
        # shellcheck source=/dev/null
        sudo apt install vagrant
    fi
    vagrant::post_install
}

function vagrant::post_install {
    if [[ $(uname) == 'Darwin' ]]; then
        if [[ ! -x "$(command which virtualbox)" ]]; then
            brew cask install virtualbox
        fi
    fi
}

function vagrant::load {
    echo -e "${CLEAR}${LIGHT_GREEN}load vagrant${CLEAR}"
}

function vagrant::dependences {
    vagrant::load
    echo -e "${CLEAR}${LIGHT_GREEN}Installing Dependences${CLEAR}"
}

vagrant::load

if [[ ! -x "$(command which vagrant)" ]]; then
    vagrant::install
fi
