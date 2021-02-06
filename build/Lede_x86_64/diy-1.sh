#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#

# 基本不需要添加啥插件了,我搜集了各位大神的插件都集成一个软件包直接打入源码里面了
# 要了解增加了什么东西，就到我的专用软件包里面看看看吧，如果还是没有你需要的插件，请不要一下子就拉取别人的插件包
# 相同的文件都拉一起，因为有一些可能还是其他大神修改过的容易造成编译错误的
# 想要什么插件就单独的拉取什么插件就好，或者告诉我，我把插件放我的插件包就行了
# 软件包地址：https://github.com/281677160/openwrt-package

#   esir大佬编写的灵缇加速器,和大雕的UU主机加速ipk有一点界面冲突,不过影响不大
git clone https://github.com/esirplayground/luci-app-LingTiGameAcc package/luci-app-LingTiGameAcc
git clone https://github.com/esirplayground/LingTiGameAcc package/LingTiGameAcc

#拉取bypass
git clone https://github.com/garypang13/luci-app-bypass package/luci-app-bypass
#git clone https://github.com/garypang13/luci-app-dnsfilter package/luci-app-dnsfilter

如要bypass和ssrp vssr passwall 同时编译  需要加入以下代码
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}
