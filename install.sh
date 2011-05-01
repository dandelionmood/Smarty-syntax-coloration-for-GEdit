#!/bin/bash

# Installation script, run it as a normal user 
# ############################################

# This is the directory where we need to put the syntax file.
rep=~/.local/share/gtksourceview-2.0/language-specs

# We create it if it doesn't exist yet.
mkdir -p $rep

# We copy the file to its final destination. 
cp ./smarty.lang "$rep/smarty.lang"
