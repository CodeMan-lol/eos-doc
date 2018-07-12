# EOS-BLOCK-BACKUP

为了后期在EOSBP受到损害后，数据同步慢的问题，EOSSTORE在此进行备份数据分享

[EOSSTORE备份存储地址](https://s3-ap-northeast-1.amazonaws.com/eosstorebp/index.html)

**EOSSTORE数据数据说明：**

环境为：Ubuntu16.04

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

注意！这里不用跟第一次启动时，需要指定配置文件启动。可直接启动服务。
