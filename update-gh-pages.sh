#!/bin/bash

mkdir -p gh-pages
rm -rf gh-pages/*

FILES="bower_components/angular*/*.min.js bower_components/angular*/*.min.css bower_components/bootstrap/dist/css/bootstrap.min.css index.*"

cp --parent $FILES gh-pages/

(cd gh-pages && git add . && git commit -a && git push)
