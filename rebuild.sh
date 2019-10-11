#!/bin/sh

zola build
git checkout master
cp -R public/* .
rm -rf public
git add .
git commit -m "Rebuild"
git checkout source