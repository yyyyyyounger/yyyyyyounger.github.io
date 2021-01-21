# 更换设备后运行本地网站所必须
npm install hexo
npm install
npm install hexo-deployer-git


# 主题安装
# themes/yun表示克隆到网站目录的themes文件夹下
git clone -b dev https://github.com/removeif/hexo-theme-amazing.git themes/amazing
#安裝amazing的其他插件包
npm install hexo-renderer-inferno
npm install hexo-component-inferno
npm install inferno
npm install inferno-create-element
npm install --save bulma-stylus@0.8.0
npm yarn add bulma-stylus@0.8.0


# 更换设备后需要运行此脚本
git add -A
git commit -m "Change Device"
git push --set-upstream origin hexo
# 接着会跳转git的登录界面


#搜索引擎；貌似amazing不需要
#npm install hexo-generator-search

#主題安裝完是舊config文件，此時把剛clone的config放入amazing
#為了繼續以上一次的配置繼續部署
updateThemesConfig.sh

