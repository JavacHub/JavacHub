#!/bin/bash
cd ~/projects/hellenhub
date=$(date)
echo "当前时间是： ${date}"
echo -n "请填写推送消息并回车(默认为时间)： "
read message
if [ "$message"x != ""x ];then
	message="$message;　"
fi
git pull --rebase --autostash
git add . -A
git commit -m "${message}${USER} 更新于 ${date}."
echo -e "\n提交成功，推送至远程...\n"
git push --force origin master

echo -e "\n*~*~*~*~*~*~*~*~*~*~*~*"
echo "    更新并推送成功！"
echo -e "*~*~*~*~*~*~*~*~*~*~*~*\n\n"
exit 0;
