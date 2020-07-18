#!/bin/bash

cur_date="`date +%Y/%m/%d-%H:%M:%S`" 
commit_content="Site updated at "${cur_date}

cd public
echo "Deleting old files..."
shopt -s extglob
rm -rf !(.git)
cd -

echo "generate content..."
hugo -D

echo "generate ended!"
echo "pushing to master..."
git add .
git commit -m "`echo ${commit_content}`"
git push origin master
echo "pushed to master! Ready push to gh-pages..."
cd public 
git add .
git commit -m "`echo ${commit_content}`"
git push origin gh-pages
echo "pushed to gh-pages!\n end!"
cd -
