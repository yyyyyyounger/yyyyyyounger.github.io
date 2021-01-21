#更新前把最新的主題配置文件.yml備份到本地再上傳到倉庫分支
backupThemesConfig.sh
echo "Backup success!"

# 倉庫內hexo的備份更新
# 如果没有消息后缀，默认提交信息为 `:pencil: update content`
info="normal update" #default為$1  更改""裡面即可更改更新說明
if ["$info" = ""];
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


# 倉庫內master的更新 (展示給外界)   npm為0則不更新master，為1時更新master
npm=1
if [ $npm -eq 1 ];
then
    echo "Update the master!!"
    echo "Clean up!!"
    hexo clean
    echo "Generate the file!!"
    echo "And Deploying..."
    hexo g -d
else
    echo "   "
    echo "Do not update the master branch."
fi
