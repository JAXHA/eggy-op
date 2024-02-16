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
sed -i 's/192.168.1.1/192.168.1.1/g' package/base-files/files/bin/config_generate

# Remove old version packages
rm -rf ./feeds/luci/applications/openclash
rm -rf ./feeds/luci/applications/luci-app-ssr-plus
# rm -rf ./feeds/luci/applications/luci-app-passwall
rm -rf ./feeds/packages/net/xray-core
rm -rf ./feeds/packages/net/xray-plugin
git clone -b master --single-branch https://github.com/fw876/helloworld.git package/luci-app-ssr-plus
git clone -b master --single-branch https://github.com/vernesong/OpenClash.git package/openclash
# git clone -b main --single-branch https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall
# git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall_packages
# rm -rf $(find ./feeds/luci/ -type d -regex ".*\(passwall\|openclash\).*")
# rm -rf $(find ./feeds/packages/net/ -type d -regex ".*\(xray-core\|xray-plugin\).*")
# rm -rf feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd-alt,miniupnpd-iptables,wireless-regdb}

# Update Golang
# git clone -b master --single-branch https://github.com/immortalwrt/packages.git packages_master && rm -rf ./feeds/packages/lang/golang && mv ./packages_master/lang/golang ./feeds/packages/lang && rm -rf ./packages_master
#echo -e '\nEggy Build\n' >> package/base-files/files/etc/banner
