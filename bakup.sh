set -x;
time=`date +%Y%m%d`
BAK_DIR=/root/0bak/yapi


$BAK_DIR/dump_mongo.sh yapi $BAK_DIR/db

tar zcvf $BAK_DIR/dbdata_$time.tar.gz -C $BAK_DIR db/

find $bakdir -name "*.tar.gz" -type f -mtime +100 -exec rm -rf {} \; > /dev/null 2>&1
rm -rf $BAK_DIR/db/

