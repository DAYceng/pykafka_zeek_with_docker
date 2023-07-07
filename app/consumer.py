from kafka import KafkaConsumer, TopicPartition

consumer = KafkaConsumer(bootstrap_servers='kafka:9092')
#consumer.assign([TopicPartition('foobar',1)])
consumer.subscribe('foo_dayceng')
print('consumer connected')
for msg in consumer:
    print(msg)
    res = msg.value.decode()
    print(f'received data：{res}')

