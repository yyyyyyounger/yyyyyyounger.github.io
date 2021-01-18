---
title: Hello World !
---
我的第一條Blog！在2021.01.17的晚上面世啦！
下面是老規矩—— HELLO WORLD (記錄下hexo常用功能)

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
Notice: Windows環境下的CMD是沒有bash命令的，bash其實是Linux上的命令。（應該是這麼理解沒錯吧