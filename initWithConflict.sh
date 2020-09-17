#!/bin/bash

git init -q

echo "Commit 1" > File1
git add File1
git commit -m"Add Commit 1 in File1"

echo "Commit 2" > File2
git add File2
git commit -m"Add Commit 2 in File2"

echo "Commit 3" > File3
git add File3
git commit -m"Add Commit 3 in File3"

echo "Commit 4" > File4
git add File4
git commit -m"Add Commit 4 in File4"

echo "Commit 5" > File5
git add File5
git commit -m"Add Commit 5 in File5"

git checkout -b "fully_independent"

echo "Commit 6" > File6
git add File6
git commit -m"Add Commit 6 in File6"

echo "Commit 7" > File7
git add File7
git commit -m"Add Commit 7 in File7"

echo "Commit 8" > File8
git add File8
git commit -m"Add Commit 8 in File8"

echo "Commit 9" > File9
git add File9
git commit -m"Add Commit 9 in File9"

echo "Commit 10" > File10
git add File10
git commit -m"Add Commit 10 in File10"

git checkout "master"
git checkout -b "modify_conflict_File1_in_master_branch"
echo "Commit 11 overwrite Commit 1" > File1
git add File1
git commit -m"Add Commit 11 in File1"

git checkout "fully_independent"
git checkout -b "modify_conflict_File6_in_fully_independent_branch"
echo "Commit 12 overwrite Commit 6" > File6
git add File6
git commit -m"Add Commit 12 in File6"

# Master Change the line of File1 in master branch
git checkout master
echo "Commit 13 overwrite Commit 1" > File1
git add File1
git commit -m"Add Commit 11 in File1"

# Master Delete the line of File1 in master branch
# git checkout master
# echo "" > File1
# git add File1
# git commit -m"Add Commit 14 in File1"

# # Master Add a new line of File1 in master branch
# git checkout master
# echo "Commit 15" >> File1
# git add File1
# git commit -m"Add Commit 15 in File1"

# Madly modify in fully_independent
git checkout "fully_independent"
echo "Commit 16 overwrite Commit 7" > File7
git add File7
git commit -m"Add Commit 17 in File7"
echo "Commit 17 overwrite Commit 1" > File1
git add File1
git commit -m"Add Commit 17 in File1"
echo "Commit 18 overwrite Commit 6" > File6
git add File6
git commit -m"Add Commit 18 in File6"