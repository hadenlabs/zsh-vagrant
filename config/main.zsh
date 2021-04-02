#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function vagrant::config::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_VAGRANT_PATH}"/config/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_VAGRANT_PATH}"/config/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_VAGRANT_PATH}"/config/linux.zsh
      ;;
    esac
}

vagrant::config::main::factory