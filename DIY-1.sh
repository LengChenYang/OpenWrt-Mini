# 此脚本用处是：添加第三方插件
#=========================================================================================================================


# 1-添加 ShadowSocksR Plus+ 插件
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 2-添加 PowerOff 关机插件
git clone https://github.com/WukongMaster/luci-app-poweroff.git package/luci-app-poweroff

# 3-添加 opentomcat 主题
git clone https://github.com/WukongMaster/luci-theme-opentomcat.git package/luci-theme-opentomcat

# 4-添加 OpenClash 插件
sed -i '$a\src-git openclash https://github.com/vernesong/OpenClash' ./feeds.conf.default

# 5-添加 PassWall 插件
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"

# 6-添加 mosdns 插件
echo "src-git mosdns https://github.com/sbwml/luci-app-mosdns.git;v5" >> "feeds.conf.default"

# 7-添加 adguardhome 插件
echo "src-git adguardhome https://github.com/kiddin9/openwrt-packages.git;master" >> "feeds.conf.default"

# 8-添加 smartdns 插件
echo "src-git smartdns https://github.com/kiddin9/openwrt-packages.git;master" >> "feeds.conf.default"


