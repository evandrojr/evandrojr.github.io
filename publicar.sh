#!/usr/bin/env zsh

function acp {
 git add -A .
 git commit -m "$*"
 git pull 
 git push
}

HUGO_ENV=production hugo
rm -rf docs
mv public docs
cp CNAME docs/
acp "Publicando site"