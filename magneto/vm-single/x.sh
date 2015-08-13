#!/bin/bash

#配置ip
ip=`ip -f inet addr | grep global | awk '{print $2}' | awk -F/ '{print $1}'`
. /opt/magneto/bin/mgconfdb $ip $ip
. /opt/magento/bin/mgconfes $HOSTNAME $ip 1 4
. /opt/magneto/bin/mgconfredis $ip '1g'
. /opt/magento/bin/mgconfspark $ip
. /opt/magneto/bin/mgconfdbserver $ip
. /opt/magento/bin/mgconfjobserver $ip
. /opt/magneto/bin/mgconfmapserver $ip


#重启所有的服务
. /opt/magneto/bin/mgstartdb
. /opt/magento/bin/mgstartes $((`meminfo | grep 'Mem' | awk '{print $2}' ` / 2048 ))g
. /opt/magneto/bin/mgstartservices
. /opt/magento/bin/mgstartpiweb

#按照约定，此操作不应提供，为了流程的完整性，写出初始化执行的方法
#初始化
#. /opt/magneto/bin/mginitdb-pi -debug
#. /opt/magneto/bin/mginites

#索引特殊数据
. /opt/magneto/bin/mgontology /opt/magneto/conf/specialTaskPersonClueConfig.json

#执行周期性任务
. /opt/magneto/bin/createcrontab

#索引特殊字段,调用java程序
