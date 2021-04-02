#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function vagrant::pkg::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_VAGRANT_PATH}"/pkg/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_VAGRANT_PATH}"/pkg/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_VAGRANT_PATH}"/pkg/linux.zsh
      ;;
    esac

}

vagrant::pkg::main::factory
