#!/bin/bash
cur_dir=$(cd $(dirname $0)  && pwd)
parent_dir=$(cd $(dirname $0) && cd .. && pwd)

sudo ls
# if [ $# -ne 1 ] ; then
# 	echo "***********************************************************************************"
# 	echo "请输入pcap名称"
# 	echo "例如：bash run.sh  test.pcap"
# 	echo "***********************************************************************************"
# 	exit 1
# fi
# pcap_name=$1


# if [ -d ${pcap_path}]; then
#     echo "发现pcap文件"
# 	#使用zeek解析pcap包，以json格式输出（注：文件后缀仍为log，但内容已为json）
# 	docker exec -it lord_elmelloi /bin/bash -c 'cd /pcap && zeek -r ${pcap_path} LogAscii::use_json=T'0
# 	echo "pcap解析完成"
# else
#     echo "不存在该pcap文件"
# fi

#使用zeek解析pcap包，以json格式输出（注：文件后缀仍为log，但内容已为json）
docker exec -it zeek_in_docker /bin/bash -c 'cd /pcap && zeek -r smallFlows.pcap LogAscii::use_json=T'

#复制一个日志作为临时文件给kafka客户端
echo "将http日志发送给kafka生产者"
cd ${parent_dir}/pcap
# cp http.log /root/elk_spark/app
cp http.log /root/pykafka_zeek_with_docker/app
echo "发送完毕"