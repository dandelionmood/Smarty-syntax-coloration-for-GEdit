#!/bin/bash

# Installation script, run it as a normal user 
# ############################################


# HANDLING OF THE LANG FILE

# This is the directory where we need to put the syntax file.
rep=~/.local/share/gtksourceview-2.0/language-specs

# We create it if it doesn't exist yet.
mkdir -p $rep

# We copy the file to its final destination. 
cp ./smarty.lang "$rep/smarty.lang"



# HANDLING OF THE XML FILE
# We need to declare a new mime type.

rep_mime=~/.local/share/mime/packages
mkdir -p $rep_mime
cp ./smarty.xml "$rep_mime/smarty.xml"

# We need to update the mime database to allow the handling 
# of smarty template files.
update-mime-database ~/.local/share/mime
