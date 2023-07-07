#!/bin/bash
cur_dir=$(cd $(dirname $0)  && pwd)
parent_dir=$(cd $(dirname $0) && cd .. && pwd)

#构建zeek镜像
cd ${parent_dir}
make build-stamp_3.0.0
# sudo docker build -t /root/zeek-docker/

#启动zeek容器
sudo docker run -itd --rm --name zeek_in_docker -v /root/pykafka_zeek_with_docker/zeek/pcap:/pcap broplatform/bro:3.0.0 /bin/bash 

# 查看容器状态
docker ps -a