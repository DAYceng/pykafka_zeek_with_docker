#!/bin/bash
cur_dir=$(cd $(dirname $0)  && pwd)
parent_dir=$(cd $(dirname $0) && cd .. && pwd)

if [[ -n $(docker ps | grep zeek_in_docker) ]];then
	echo "zeek容器已经启动,请执行get_pcap_for_test.sh以获取测试用pcap包"
    
else
	echo "zeek容器未启动，准备编译启动"
    cd ${parent_dir}/zeek/dev_env
    bash run_zeek.sh
fi
