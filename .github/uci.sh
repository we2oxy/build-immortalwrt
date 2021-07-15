uci set network.lan.ipaddr='192.168.1.1'
uci commit network
/etc/init.d/network  restart

uci show network  #命令查看具体的uci配置选项

uci set network.wan.proto=dhcp
uci commit network
/etc/init.d/network  restart

uci set network.wan.proto=pppoe
uci set network.wan.username="宽带账号"
uci set network.wan.password="宽带密码"
uci commit network
/etc/init.d/network  restart

dd if=/tmp/upload/op.img of=/dev/sda
