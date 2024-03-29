#!/bin/bash
#======== SEND BACKUP UBIQUITI FOR SSH      ==========#
#=====================================================#
#======== USER - PASSWORD - PORT            ==========#
ssh_user="USER"                #USER                 
ssh_pass="PASSWORD"            #PASSWORD
ssh_porta="22"
#=====================================================#
# UBIQUITI COMMAND
comando="cat /tmp/system.cfg"
dia="`date +%d-%m-%Y`"
#
#RUN UBIQUITI COMMAND TO SSH
for ubnt in $(cat /home/ftp_backup/ubiquiti/ubnt.txt); do
 mkdir  /home/ftp_backup/ubiquiti/$ubnt
 scp -r  admin@$ubnt:/tmp/ /home/ftp_backup/ubiquiti//$ubnt
 ssh admin@$ubnt "$comando" > /home/ftp_backup/ubiquiti/bkp-ubnt-$ubnt-$dia.cfg
done
#FILE END
