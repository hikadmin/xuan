while true;do
        Time=`date +%d`
        ping -W 1 -c 1 10.13.0.141 >/dev/null 2>&1 && echo "[`date +%H:%M:%S`] success" >> $logfile 2>&1 || echo "[`date +%H:%M:%S`] failed" >> $logfile 2>&1
        sleep 0.5
        if [[ "`date +%d`" != "$Time" ]];then  oldfile=`echo ${logfile}_$(date +%Y.%m.)${Time}`; mv $logfile $oldfile;fi
done
