#!/bin/bash
date=$(date)
echo -n "Push Message： "
read  message
if [ "$message"x != ""x ];then
	message="$message;　"
fi
git pull --rebase --autostash
git add . -A
git commit -m "${message}${USER} 更新于 ${date}."
git push --force origin master

echo "更新并推送成功！"
exit 0;
