#!/system/bin/sh

portal_server=`settings get global captive_portal_server`
case "$portal_server" in
    "" | "null" | "g.cn")
        settings put global captive_portal_server "www.v2ex.com"
        portal_server=`settings get global captive_portal_server`
        ;;
esac
echo "captive_portal_server is $portal_server"
data_call=`settings get global multi_sim_data_call`
voice_call=`settings get global multi_sim_voice_call`
sms=`settings get global multi_sim_sms`
case "$data_call" in
    "" | "null")
        settings put global multi_sim_data_call 1
        data_call=`settings get global multi_sim_data_call`
        ;;
esac
echo "data call is $data_call"
case "$voice_call" in
    "" | "null")
        settings put global multi_sim_voice_call 1
        voice_call=`settings get global multi_sim_voice_call`
        ;;
esac
echo "voice call is $voice_call"
case "$sms" in
    "" | "null")
        settings put global multi_sim_sms 1
        sms=`settings get global multi_sim_sms`
        ;;
esac
echo "sms is $sms"
