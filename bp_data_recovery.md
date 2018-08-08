# BP 数据在损坏后，进行replay自动恢复

如下图，报错说明需要replay进行恢复数据

![](https://i.imgur.com/DGDjQCK.png)


replay命令

    nodeos --config-dir /data/eos-config -d /data/eos-data --hard-replay-blockchain


![](https://i.imgur.com/6T6hXKS.png)

如下图，说明恢复正常。等着就行了。

![](https://i.imgur.com/wCsHvsl.png)