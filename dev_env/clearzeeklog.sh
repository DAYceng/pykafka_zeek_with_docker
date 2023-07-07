#!/bin/bash
cur_dir=$(cd $(dirname $0)  && pwd)
parent_dir=$(cd $(dirname $0) && cd .. && pwd)
cd ${parent_dir}/zeek/pcap
    #清理zeek的log
    bash allclearlog.sh