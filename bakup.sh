set -x;
time=`date +%Y%m%d`
BAK_DIR=/root/yapi

tar zcvf $BAK_DIR/dbdata_$time.tar.gz -C $BAK_DIR dbdata/

find $bakdir -name "*.tar.gz" -type f -mtime +100 -exec rm -rf {} \; > /dev/null 2>&1


