#!/usr/bin/bash

cd docs
jekyll build
cd -
for f in .gitignore LICENSE README.md docs
do
  git add ${f}
  git commit -m "${f}"
done
git push
