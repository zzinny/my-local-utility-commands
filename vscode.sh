#!/bin/zsh

##############################################################
# vscode.sh                                                 ##
#                                                           ##
# This is a shell script for opening visual studio code     ##
# at terminal. Working directory can be set optionally by   ##
# passing it as an argument.                                ##
##############################################################

VISUAL_STUDIO_CODE_PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
VISUAL_STUDIO_CODE_BIN="$VISUAL_STUDIO_CODE_PATH/code"
MSG="Open visual studio code"
WORKING_DIR="."

if [ $1 ] && [ $1 != . ];
then
    MSG="$MSG at $1..."
    WORKING_DIR=$1
else
    MSG="$MSG at the current directory..."
fi

echo $MSG
exec "$VISUAL_STUDIO_CODE_BIN" "$WORKING_DIR"