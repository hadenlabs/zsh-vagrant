#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install vagrant for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#

# shellcheck disable=SC2034  # Unused variables left for readability
ZSH_VAGRANT_PATH=$(dirname "${0}")

# shellcheck source=/dev/null
source "${ZSH_VAGRANT_PATH}"/config/main.zsh

# shellcheck source=/dev/null
source "${ZSH_VAGRANT_PATH}"/internal/main.zsh

# shellcheck source=/dev/null
source "${ZSH_VAGRANT_PATH}"/pkg/main.zsh
