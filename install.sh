#!/bin/bash

# Script d'installation du fichier smarty.lang
# ############################################

# Répertoire où l'on va installer le fichier.
rep=~/.local/share/gtksourceview-2.0/language-specs
# Création au cas où il n'existe pas encore.
mkdir -p $rep

# Création d'un lien symbolique vers le fichier Smarty.
ln -s `pwd`/smarty.lang "$rep/smarty.lang"
