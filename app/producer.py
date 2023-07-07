#-*- coding: utf-8 -*-
import json
import time
from kafka import KafkaProducer

producer = KafkaProducer(bootstrap_servers='kafka:9092')

def read_log():
    """
    读取日志文件,进行数据重组,写入mysql
    :return:
    """
    file = "http.log"
    # i = 1
    with open(file) as f:
        """使用while循环每次只读取一行,读到最后一行的时候结束"""
        while True:
            lines = f.readline()
            # i = i+1
            if not lines:
                break
            # line = lines.split(" ")
            # data.append((line[0], line[1].strip(), int(str(line[2]).strip()), line[3].strip()))
            data.append(lines)
            return data

# msg_dict = {
#     "name":"dayceng",#
#     "Id":"123kkb",#
#     "passCode":"123lsp",#
#     "number":"1",#
# }
if __name__ == '__main__':
    data = []
    print(read_log())
    msg = json.dumps(data).encode() #这里加了encode 进行了编码
    producer.send('foo_dayceng', msg)
    time.sleep(1)
    producer.close()
    # print("结束")
