#! /usr/bin/env bash
set -x
SUBMODULE_NAME=${1}
git submodule deinit -f "$SUBMODULE_NAME"
git rm -f "$SUBMODULE_NAME"
rm -rf ".git/modules/$SUBMODULE_NAME"
set +x
