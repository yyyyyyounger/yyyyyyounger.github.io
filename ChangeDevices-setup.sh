# 更换设备后运行本地网站所必须
npm install hexo
npm install
npm install hexo-deployer-git


# 主题安装
# themes/yun表示克隆到网站目录的themes文件夹下
git clone https://github.com/YunYouJun/hexo-theme-yun themes/yun


# 更换设备后需要运行此脚本
git add -A
git commit -m "Change Device"
git push --set-upstream origin hexo
# 接着会跳转git的登录界面