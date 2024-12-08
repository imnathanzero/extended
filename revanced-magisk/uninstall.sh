#!/system/bin/sh
{
	MODDIR=${0%/*}
	. "$MODDIR/config"

	rm "/data/adb/extend/${MODDIR##*/}.apk"
	rmdir "/data/adb/extend"
	rm "/data/adb/post-fs-data.d/$PKG_NAME-uninstall.sh"
} &
