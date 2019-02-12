#!/bin/bash

# -------------------------------------------------------------------
# Simple backup script
# author: Marek Witkowski (http://www.github.com/marekwu)
# -------------------------------------------------------------------

data_old=`date --date='7 days ago'  +%Y-%m-%d`
data=`date +%Y-%m-%d`

# --------------------------------------------------------------------
# backup /etc
# --------------------------------------------------------------------

cd /
        tar -cvvf $data-etc.tar.gz etc/
        mv $data-etc.tar.gz /backup/server/etc
cd /var/log
        tar -cvvf $data-maillog.tar.gz maillog
        mv $data-maillog.tar.gz /backup/server/log/

# --------------------------------------------------------------------
# backup /home
# --------------------------------------------------------------------

cd /backup/server/
	mkdir $data
	cd $data
	mkdir home
	cd /home

	rm *.gz

	for i in `ls`
        	do
                	tar -cvvf $data-$i.tar.gz $i/
	                mv $data-$i.tar.gz /backup/server/$data/home
        	        rm *.gz
	        done

# --------------------------------------------------------------------
# remove old backup
# --------------------------------------------------------------------

rm /backup/server/etc/$data_old-etc.tar.gz
rm /backup/server/$data_old-maillog.tar.gz
rm -r -f /backup/server/$data_old

