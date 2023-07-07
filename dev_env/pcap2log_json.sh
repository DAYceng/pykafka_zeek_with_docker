#!/bin/bash
cur_dir=$(cd $(dirname $0)  && pwd)
parent_dir=$(cd $(dirname $0) && cd .. && pwd)

if [[ -n $(docker ps | grep zeek_in_docker) ]];then
	echo "zeek容器已经启动，准备解析pcap"
    cd ${parent_dir}/zeek/pcap
    #清理历史log
    bash allclearlog.sh
    #解析pcap
    bash parsing_pcap.sh
else
	echo "zeek容器未启动，请运行脚本zeek-docker_run.sh"
fi