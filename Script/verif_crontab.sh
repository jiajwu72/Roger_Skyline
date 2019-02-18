file="`md5sum /etc/crontab`"
file_bu="`md5sum /etc/crontabd | sed 's/.$//'`"

if [ "$file" != "$file_bu" ]
then
    echo "/etc/crontab edited" | mail -s "/etc/crontab" root
    exit 1
else
    echo "no change"
fi
