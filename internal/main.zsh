#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function vagrant::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_VAGRANT_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_VAGRANT_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_VAGRANT_PATH}"/internal/linux.zsh
      ;;
    esac
}

vagrant::internal::main::factory

if ! core::exists vagrant; then core::install vagrant; fi
if ! core::exists virtualbox; then core::install virtualbox; fi
