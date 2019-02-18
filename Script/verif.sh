save="/tmp/md5_save"
lec="/tmp/md5_lec"
#md5sum /etc/crontab > $save
#md5sum -c save > $lec
if [ ! -f $save ]
then
        crontab -l | md5sum > $save
        echo "do file save"
fi
md5sum -c $save > $lec
txt=`grep Réussi $lec | cut -d : -f2`
if [ $txt ]
then
        echo "il n'y a pas de modification"
else
        echo "fichier crontab a ete modifie!" #| mail -s "file modif" root
fi
