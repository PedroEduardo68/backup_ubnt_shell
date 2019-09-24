# Script for bakup device UBNT

How to install of script.
* Create a directory in /home/ftp_backup/ubiquiti in linux.
* Create a file witch list IP of radios.  /home/ftp_backup/ubiquiti/ubnt.txt
* Create a file shell for backup.  /home/ftp_backup/ubiquiti/backup_ubnt.sh
* chmod 755 /home/ftp_backup/ubiquiti/backup_ubnt.sh

Create a key public in ssh and import key for the device.
Add the /home/ftp_backup/ubiquiti/backup_ubnt.sh inside in crontab in linux or unix.

