#!/system/bin/sh

portal_server=`settings get global captive_portal_server`
case "$portal_server" in
    "" | "null" | "www.v2ex.com")
        settings put global captive_portal_server "g.cn"
        portal_server=`settings get global captive_portal_server`
        ;;
esac
echo "captive_portal_server is $portal_server"
