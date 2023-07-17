#####################################################################
# cd /opt/rt-n56u/trunk 执行在这个目录下
#
# 修改默认参数（不同设备拷贝到相应 *.sh)          by: TurBoTse
#####################################################################

lan_ip="192.168.8"                          # LAN 地址 别写后面的 .1
default_path="./user/shared"                # 默认配置路径
config="./configs/templates/NEWIFI3.config"     # 默认配置文件

echo "修改 LAN IP 地址"
sed -i "s/192.168.2/$lan_ip/g" $default_path/defaults.h

#echo "设置为PPPOE模式并写入账号和密码"
#sed -i 's/{ "wan_proto", "dhcp" }/{ "wan_proto", "pppoe" }/g' $default_path/defaults.c
#sed -i 's/{ "wan_pppoe_username", "" }/{ "wan_pppoe_username", "你的宽带账号" }/g' $default_path/defaults.c
#sed -i 's/{ "wan_pppoe_passwd", "" }/{ "wan_pppoe_passwd", "宽带密码" }/g' $default_path/defaults.c

#echo "设置为AP模式"
#echo "#define BOARD_ROLE_REPEATER	1" >> ./configs/boards/NEWIFI3/board.h

#echo "打开2G无线桥接"
#sed -i 's/{ "rt_mode_x", "0" }/{ "rt_mode_x", "4" }/g' $default_path/defaults.c

#echo "打开5G无线桥接"
#sed -i 's/{ "wl_mode_x", "0" }/{ "wl_mode_x", "4" }/g' $default_path/defaults.c

#echo "超频到 900MHz "
#sed -i '/CONFIG_FIRMWARE_CPU_900MHZ/d' $config
#echo "CONFIG_FIRMWARE_CPU_900MHZ=y" >> $config

#echo "集成 KMS 激活服务器"
#sed -i "s/CONFIG_FIRMWARE_INCLUDE_VLMCSD=n/CONFIG_FIRMWARE_INCLUDE_VLMCSD=y/g" $config

sed -i "s/CONFIG_FIRMWARE_INCLUDE_KOOLPROXY=n/CONFIG_FIRMWARE_INCLUDE_KOOLPROXY=y/g" $config  #KP广告过滤


sed -i "s/CONFIG_FIRMWARE_INCLUDE_WYY=n/CONFIG_FIRMWARE_INCLUDE_WYY=y/g" $config #网易云解锁
sed -i "s/CONFIG_FIRMWARE_INCLUDE_WYYBIN=n/CONFIG_FIRMWARE_INCLUDE_WYYBIN=y/g" $config #网易云解锁GO版本执行文件（2M多）注意固件超大小

sed -i "s/CONFIG_FIRMWARE_INCLUDE_OPENSSH=n/CONFIG_FIRMWARE_INCLUDE_OPENSSH=y/g" $config
