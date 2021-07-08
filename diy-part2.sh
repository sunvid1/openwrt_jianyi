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
#修改默认IP
sed -i 's/192.168.1.1/10.0.5.1/g’ package/base-files/files/bin/config_generate

# 修改主机名
# sed -i 's/ OpenWrt/Sunvid /g' package/base-files/files/bin/config_generate

# 修改启动0秒
sed -i 's/default "5"/default "0"/g' config/Config-images.in

# 修改版本号
# sed -i "s/OpenWrt /P3TERX build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-设置

# 修改掩码
sed -i 's/255.255.255.0/255.255.248.0/g' package/base-files/files/bin/config_generate

# 修改机器名称 #默认名称OpenWrt
sed -i ' s/set system.@system[-1].hostname= ' OpenWrt ' /set system.@system[-1].hostname= ' Sunvid ' /g ' package/base-files/files/bin/ config_generate

# 修改票号
# sed -i "DISTRIB_REVISION='R21.6.1'" >> /etc/openwrt_release

# 修改一根尾巴名称
sed -i " s/OpenWrt /Sunvid /g " package/lean/default-settings/files/zzz-default-settings
