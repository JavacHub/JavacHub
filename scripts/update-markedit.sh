#!/bin/bash
date=$(date)
echo -n "Push Message： "
read  message
if [ "$message"x != ""x ];then
	message="$message;　"
fi

if [ $(uname) == Darwin ]; then
	if [ "$(diff -r /Users/jonny/Documents/Markdown/我的博客/posts /Users/jonny/StaticSites/jonnyhub/content/posts)"x != ""x ];then
		echo "当前系统为： $(uname), posts 文件夹不一致，需要更新 posts 文件"
		rm -rf content/posts
		cp -rf /Users/jonny/Documents/Markdown/我的博客/posts /Users/jonny/StaticSites/jonnyhub/content/posts
	fi
	if [ "$(diff -r /Users/jonny/Documents/Markdown/我的博客/manual /Users/jonny/StaticSites/jonnyhub/content/manual)"x != ""x ];then
		echo "当前系统为： $(uname), manual 文件夹不一致，需要更新 manual 文件"
		rm -rf content/manual
		cp -rf /Users/jonny/Documents/Markdown/我的博客/manual /Users/jonny/StaticSites/jonnyhub/content/manual
	fi
	if [ "$(diff -r /Users/jonny/Documents/Markdown/我的博客/about /Users/jonny/StaticSites/jonnyhub/content/about)"x != ""x ];then
		echo "当前系统为： $(uname), about 文件夹不一致，需要更新 about 文件"
		rm -rf content/about
		cp -rf /Users/jonny/Documents/Markdown/我的博客/about /Users/jonny/StaticSites/jonnyhub/content/about
	fi
fi

git pull origin master:master
git add -A
git commit -m "${message}${USER} 更新于 ${date}."
git push -u origin master

echo "更新并推送成功！"
exit 0;
