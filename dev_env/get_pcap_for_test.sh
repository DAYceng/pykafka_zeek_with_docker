#!/bin/bash
cur_dir=$(cd $(dirname $0)  && pwd)
parent_dir=$(cd $(dirname $0) && cd .. && pwd)

# test.pcap, 0.07 MB
cd ${parent_dir}/zeek/pcap
if [ ! -f "test.pcap" ]; then
  wget https://s3.amazonaws.com/tcpreplay-pcap-files/test.pcap
else
  echo "The file of test.pcap has downloaded!"
fi

# smallFlows.pcap, 9.4 MB
# cd ${parent_dir}/nprobe/pcap_data/
cd ${parent_dir}/zeek/pcap
if [ ! -f "smallFlows.pcap" ]; then
  wget https://s3.amazonaws.com/tcpreplay-pcap-files/smallFlows.pcap
else
  echo "The file of smallFlows.pcap has downloaded!"
fi