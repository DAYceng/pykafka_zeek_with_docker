#!/bin/bash
cur_dir=$(cd $(dirname $0)  && pwd)
parent_dir=$(cd $(dirname $0) && cd .. && pwd)

echo "请确保执行了以下操作：
            1、get_pcap_for_test获取pcap数据包；
            2、启动zeek；
            3、解析pcap包；"
#启动整个demo
docker-compose up

#后台启动，使用docker logs <容器名>查看日志
#docker-compose up -d