#!/usr/bin/env bash
echo '=========Configure git'
GLOBAL_GIT_CONFIG_DIR=$HOME/.config/git
if [[ ! -d $GLOBAL_GIT_CONFIG_DIR ]]
then
    echo "Create git global config folder at $GLOBAL_GIT_CONFIG_DIR"
    mkdir -p "$GLOBAL_GIT_CONFIG_DIR"
fi

GIT_IGNORE_FILEPATH=$(realpath $(find . -iname 'ignore'))
GLOBAL_GIT_IGNORE_FILEPATH=$GLOBAL_GIT_CONFIG_DIR/ignore
echo "Update global ignore rules at $GLOBAL_GIT_IGNORE_FILEPATH"
cat $GIT_IGNORE_FILEPATH >> $GLOBAL_GIT_IGNORE_FILEPATH
