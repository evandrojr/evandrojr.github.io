#!/usr/bin/env zsh

function acp {
 git add -A .
 git commit -m "$*"
 git pull 
 git push
}

hugo
mv public docs
acp "Publicando site"