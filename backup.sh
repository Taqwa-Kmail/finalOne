#! /usr/bin/bash
#created by taqwa
cd /srv/samba/taqwa_201911773
/usr/bin/git add .
git commit -m "from samba"
git push origin master >> /var/log/taqwa.log 2>&1
if [ $? -eq 0 ]
then 
 echo "success at $(date)" >> /var/log/taqwa.log
else
 echo "faild at $(date)" >> /var/log/taqwa.log
fi 

