---
title: Hello World ! 我的第一篇Blog！
tags: hexo
---
這是第一條Blog！在2021.01.17的晚上面世啦！
老規矩—— HELLO WORLD ✿✿ヽ(°▽°)ノ✿ (記錄下hexo指令功能)

## Quick Start

### Create a new post
以下的 More info link 都來自官方說明文檔
``` bash
$ hexo new "My New Post"
```
More info: [Writing](https://hexo.io/docs/writing.html)


### Run server
``` bash
$ hexo server
# or short form: hexo s
```
More info: [Server](https://hexo.io/docs/server.html)


### Generate static files
``` bash
$ hexo generate
# or short form: hexo g
```
More info: [Generating](https://hexo.io/docs/generating.html)


### Deploy to remote sites
``` bash
$ hexo deploy
```
More info: [Deployment](https://hexo.io/docs/one-command-deployment.html)




## Lazy Method

超級感謝能看到 [云游君: 教你如何从零开始搭建一个属于自己的网站](https://cloud.tencent.com/developer/article/1609701) 的blog，仿照大神結尾處寫的腳本辦法，我也寫以下這個腳本用於部署到github上~

``` bash
hexo clean
hexo g
hexo d
```

### Bash Command
``` bash
npm=1
if [ $npm -eq 1 ];
then
    echo "Update the master!!"
    echo "Clean up!!"
    hexo clean
    echo "Generate the file!!"
    hexo g
    echo "Deploying..."
    hexo d
else
    echo "   "
    echo "Do not update the master branch."
fi
```
上述代碼同樣存入 xxx.sh 腳本文件內，就可以用npm控制是否更新hexo分支時順便更新master(即顯示頁面的分支)！


## 腳本的運行
沒錯，我一開始看大神用 sh update.sh 命令看傻了，CMD用不了這條命令，後來才知道sh命令是Linux的，Windows要想運行可以用Git Bash的命令行再使用bash命令。
但其實還有更方便的就是直接雙擊 xxx.sh 的圖標...

若是在VSCode內的Terminal操作，可以嘗試一下在目錄下直接輸入 xxx.sh 並Enter來運行。如果報錯不執行，可以在前面加上 .\ 強制運行？(或者說設為可信)

細緻的原理沒有深究，晚些時候再研究吧~

