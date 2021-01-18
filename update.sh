# 倉庫內hexo的備份更新
# 如果没有消息后缀，默认提交信息为 `:pencil: update content`
info="update" #default為$1  更改""裡面即可更改更新說明
if ["$info" = ""]
then info= ":pencil: update content" # ":pencil: update content"   此處為默認更新說明 if info無說明的話
fi
git add -A
git commit -m "$info"
git push origin hexo
# 添加到缓存区
# git add -A
# git commit -m "这次做了什么更改，简单描述下即可"
# 推送至远程仓库
# git push
# 第一次提交，你可能需设置一下默认提交分支 # git push --set-upstream origin hexo


# 倉庫內master的更新 (展示給外界)
npm = false
if [ npm ]
then
    hexo clean
    hexo g
    hexo d
fi
