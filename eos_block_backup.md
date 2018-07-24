# EOS-BLOCK-BACKUP

为了后期在EOSBP受到损害后，数据同步慢的问题，EOSSTORE在此进行备份数据分享

[EOSSTORE备份存储地址](https://s3-ap-northeast-1.amazonaws.com/eosstorebp/index.html)

**EOSSTORE数据数据说明：**

环境为：Ubuntu16.04

注意：

我们备份环境的chain-state-db-size-mb = 20480 参数设置是20G（20480）

如果你们设置的参数大于20G的话，可以使用我们备份的数据。如果参数设置小于20G，我建议暂时不要使用。

数据目录为eos-data目录，在各位下载后的数据只有blocks目录和state目录。需要放到你们各自设置的数据目录中。

    root@eos-test-01:/data# ls
    eos-config  eos-data  eosio.log
    root@eos-test-01:/data# cd eos-data/
    root@eos-test-01:/data/eos-data# ll
    total 20
    drwxr-xr-x 5 1001 1001 4096 Jul  2 09:59 ./
    drwxr-xr-x 4 root root 4096 Jul  2 10:08 ../
    drwxrwxr-x 3 1001 1001 4096 Jun 25 13:57 blocks/
    drwxrwxr-x 2 1001 1001 4096 Jul  2 10:08 state/
    root@eos-test-01:/data/eos-data# ls


**下载方式：**

复制下载地址，到相应的BP节点内，进行

    wget https://s3-ap-northeast-1.amazonaws.com/eosstorebp/xxx.tar.gz

**解压方式：**

    tar zxvf xxx.tar.gz

**启动方式：**

直接启动服务即可。

**注意：**
  
备份地点：aws东京S3服务

如果你们使用的节点不是aws服务器，可以下载会慢一点。

备份周期，暂定为每天备份两次。
