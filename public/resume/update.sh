#!/usr/bin/env bash

git pull origin master:master
git add -A
git commit -m "更新."
git push -u origin master

echo "更新并推送成功！"
exit 0;
