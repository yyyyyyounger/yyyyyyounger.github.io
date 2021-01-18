# 如果没有消息后缀，默认提交信息为 `:pencil: update content`
info=$1
if ["$info" = ""];
then info=":pencil: update content"
fi
git add -A
git commit -m "$info"
git push origin hexo

# 添加到缓存区
##git add -A
##git commit -m "这次做了什么更改，简单描述下即可"
# 推送至远程仓库
##git push
# 第一次提交，你可能需设置一下默认提交分支
# git push --set-upstream origin hexo

# 添加到缓存区
git add -A
git commit -m "这次做了什么更改，简单描述下即可"
# 推送至远程仓库
git push --set-upstream origin hexo
# 第一次提交，你可能需设置一下默认提交分支
# git push --set-upstream origin hexo

git add -A
git commit -m "更新了網站的title！"
git push --set-upstream origin hexo