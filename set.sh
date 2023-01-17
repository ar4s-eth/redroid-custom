#!/system/bin/sh

tmpPushed=/frida
rm -rf $tmpPushed
mkdir $tmpPushed
cp /frida-server $tmpPushed/frida-server
umount /frida-server ; rm -v /frida-server

# add /sbin
# /sbin/
# ├── frida-server
mkdir /sbin
chown root:root /sbin
chmod 0751 /sbin
cp $tmpPushed/frida-server /sbin/
find /sbin -type f -exec chmod 0755 {} \;
find /sbin -type f -exec chown root:root {} \;