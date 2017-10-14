#!/sbin/sh
mount -a
for patch in $(find /tmp/patches -type d -name "*.apk");do
    cd $patch
	/tmp/zip -r $(find /system/app -name $(basename $patch)) *
	/tmp/zip -r $(find /system/priv-app -name $(basename $patch)) *
	/tmp/zip -r $(find /system/framework -name $(basename $patch)) *
    cd /tmp
done
#rm /*/dalvik-cache/*
