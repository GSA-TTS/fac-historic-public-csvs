#!/bin/sh

directory=$(dirname "$0")
prefix=${directory%/}
# Concatenate them into a tar.gz
cat "${prefix}"/dumps/* > "${prefix}"/sql.tar.gz
# Remove the splits, as the TGZ will land in the same place
rm -rf "${prefix}"/dumps
# This leaves a set of SQL files in /dumps
tar xvzf sql.tar.gz
rm sql.tar.gz
