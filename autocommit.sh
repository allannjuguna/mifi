#! /bin/bash

git add * && sleep 1 && git commit -m "new commit"
git add * || sleep 1 && git commit -m "new commit"