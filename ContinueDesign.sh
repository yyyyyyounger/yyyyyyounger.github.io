echo "從GitHub獲取最新資源中..."
git pull

#把剛pull下來的最新配置文件對主題config進行更新
echo "Themes Update Processing..."
echo "Update to the lastest time status..."
cp backup/themes/_config.yml themes/amazing
