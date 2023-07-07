#!/bin/bash
cur_dir=$(cd $(dirname $0)  && pwd)
parent_dir=$(cd $(dirname $0) && cd .. && pwd)
#清理zeek生成的日志文件
sudo rm conn.log dhcp.log dns.log dpd.log notice.log files.log packet_filter.log http.log snmp.log smtp.log ntp.log ssl.log weird.log x509.log > /dev/null 2>&1
#

echo "zeek日志清理完毕"


