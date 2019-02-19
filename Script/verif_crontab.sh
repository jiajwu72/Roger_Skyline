tmp="/root/Script/tmp"
cron="/root/Script/cron"
crontab -l > $cron
#cat -e $cron
if [ "`diff $tmp $cron`" != '' ]
then
    echo "crontab change" | sudo /usr/sbin/sendmail jwu #jwu est le root
    cat $cron > $tmp
else
    echo "not change"
fi
  
