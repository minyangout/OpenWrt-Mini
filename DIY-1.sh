
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

# 6-添加额外插件
#git clone https://github.com/gngpp/luci-theme-design package/luci-theme-design.git package/luci-theme-design
#git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
#git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata.git package/v2ray-geodat
#git_sparse_clone master https://github.com/kiddin9/openwrt-packages luci-app-aliddns
#git_sparse_clone master https://github.com/kiddin9/openwrt-packages luci-app-pushbot
#git_sparse_clone master https://github.com/kiddin9/openwrt-packages luci-app-jellyfin luci-lib-taskd luci-lib-xterm taskd
#git_sparse_clone master https://github.com/kiddin9/openwrt-packages luci-app-linkease linkease ffmpeg-remux
#git clone https://github.com/sirpdboy/sirpdboy-package/tree/main/luci-app-autotimeset.git package/luci-app-autotimeset
#git clone https://github.com/sirpdboy/sirpdboy-package/tree/main/luci-app-advanced.git package/luci-app-advanced
#git_sparse_clone main https://github.com/sirpdboy/sirpdboy-package/tree/main/luci-app-socat.git package/luci-app-socat
#git clone https://github.com/sirpdboy/sirpdboy-package/tree/main/luci-app-fileassistant.git package/luci-app-fileassistant
# 添加 diskman 插件
#sed -i '$a\src-git diskman https://github.com/lisaac/luci-app-diskman' ./feeds.conf.default

# 添加 dockerman 插件
sed -i '$a\src-git dockerman https://github.com/lisaac/luci-app-dockerman' ./feeds.conf.default
#sed -i '$a\src-git luci-lib-docker https://github.com/lisaac/luci-lib-docker' ./feeds.conf.default

echo "
# 主题
#CONFIG_PACKAGE_luci-theme-design=y

# mosdns
#CONFIG_PACKAGE_luci-app-mosdns=y

# pushbot
#CONFIG_PACKAGE_luci-app-pushbot=y

# 阿里DDNS
#CONFIG_PACKAGE_luci-app-aliddns=y

# Jellyfin
#CONFIG_PACKAGE_luci-app-jellyfin=y

# 易有云
#CONFIG_PACKAGE_luci-app-linkease=y

# autotimeset
#CONFIG_PACKAGE_luci-app-autotimeset=y

# advanced
#CONFIG_PACKAGE_luci-app-advanced=y

# socat
#CONFIG_PACKAGE_luci-app-socat=y

# fileassistant
#CONFIG_PACKAGE_luci-app-fileassistant

#" >> .config

