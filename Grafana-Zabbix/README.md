# Grafana-Zabbix

 EOSBP  监控

 1、zabbix 进行服务器的基础监控

 2、InfluxDB结合eoskeeper服务 进行每台BP通过HTTP API推送数据到InfluxDB

 3、Grafana 调用zabbix数据进行展示基本数据监控，和InfluxDB数据展示


 zabbix监控内容：
  
 内存使用率&剩余量

 CPU使用率&剩余量

 网络IO

 硬盘剩余量

 InfluxDB监控内容：

 host/主机名 (字符串) eos-open-fn-1-1

 hbn/当前块 (整数) 19876

 lib/不可逆块 (整数) 19856

 linkn/连接数量 (整数) 34

 lpbt/上次出块时间 （字符串） 10秒前

 paused （字符串） 是

 info/告警信息 （字符串，最长60个字符） 

