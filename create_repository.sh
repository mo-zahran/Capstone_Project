#!/bin/sh

repo_name=$1
test -z $repo_name && echo "Repo name required." 1>&2 && exit 1

curl -u 'asmirjahic' https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"

echo "# Development branch" > README.md
git init
git checkout -b development
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/asmirjahic/Capstone_Project.git
git push -u origin development
echo "# Master branch" > README.md
git checkout -b master
git add README.md
git commit -m "first commit"
git push -u origin master