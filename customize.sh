remove_limitation() {
mkdir -p "$1"

cat >"$1/services.cn.google.xml" <<EOF
<?xml version="1.0" encoding="utf-8"?>
<!-- This is the standard set of features for devices that support the CN GMSCore. -->
EOF
}

if [ -f "/system/product/etc/permissions/services.cn.google.xml" ]; then
    PERMISSION_PATH="${MODPATH}/system/product/etc/permissions"
	remove_limitation "${PERMISSION_PATH}"
elif [ -f "/system/etc/permissions/services.cn.google.xml" ]; then
    PERMISSION_PATH="${MODPATH}/system/etc/permissions"
	remove_limitation "${PERMISSION_PATH}"
else
    ui_print "services.cn.google.xm not found, skipped"
fi

MIUI_INS_EXIST=`cmd package path com.miui.packageinstaller`
MIUI_INS_ENABLED=`cmd package list packages -e com.miui.packageinstaller`
AOSP_INS_EXIST=`cmd package path com.android.packageinstaller | sed -e 's/package://g'`
MIUI_OPT=`getprop persist.sys.miui_optimization`
if [ -n "$MIUI_INS_EXIST" ] && [ -n "$MIUI_INS_ENABLED" ] && [ "$MIUI_OPT" = "false" ]; then
    REPLACE="$(dirname ${AOSP_INS_EXIST})"
    ui_print "MIUI optimization is disabled, removing AOSP Package Installer"
else
    REPLACE=""
fi
