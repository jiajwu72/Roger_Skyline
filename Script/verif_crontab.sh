tmp="/root/Script/tmp"
cron="/root/Script/cron"
crontab -l > $cron

if [ "`cat -e $tmp`" != "`cat -e $cron`" ]
then
    echo "crontab change" | sudo /usr/sbin/sendmail root
    
else
    echo "not change"
fi
  
