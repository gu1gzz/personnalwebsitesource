#!/bin/bash
git init
git add .
read -p "Entrez le texte du commit: " textcommit
git commit -m "$textcommit"
git remote add origin https://github.com/gu1gzz/personnalwebsitesource.git
git push origin main -f