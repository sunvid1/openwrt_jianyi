#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/10.0.5.1/g' package/base-files/files/bin/config_generate
#sed -i 's/default "5"/default "0"/g' config/Config-images.in
#sed -i 's/ipad=${ipaddr:-"192.168.$((addr_offset++)).1"}/ipad=${ipaddr:-"10.0.$((addr_offset++)).1"}/g' package/base-files/files/bin/config_generate
sed -i 's/255.255.255.0/255.255.248.0/g' package/base-files/files/bin/config_generate
#sed -i 's/.hostname='OpenWrt'/.hostname='Sunvid'/g' package/base-files/files/bin/config_generate
# echo "修改机器名称"  #默认名称OpenWrt
#sed -i 's/OpenWrt/Sunvid/g' package/base-files/files/bin/config_generate

# Modify hostname
#sed -i 's/OpenWrt/Sunvid/g' package/base-files/files/bin/config_generate

# Modify the version number
#sed -i "s/OpenWrt /P3TERX build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings
