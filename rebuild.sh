#!/bin/sh

zola build
git checkout master
cp -R public/* .
rm -rf public
git add .
git commit "Rebuild"
git checkout source