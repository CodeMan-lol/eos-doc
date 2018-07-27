# eos-version

 版本号 | 服务版本 | node版本
---|---|---
v1.0.2 | 26ec83de | 2524763653
v1.0.3 | 4b476ec1 | 1262972609
v1.0.6 | aa351733 | 2855606067
v1.0.7 | b195012b | 2979332395
v1.0.8 | 6ee30205 | 1860370949
v1.1.0 | 980721a6 | 2550604198
v1.1.1 | 8777d8db | 2272778459


以上为每次更新的版本号

[eos-nodeos备份地址](https://s3-ap-northeast-1.amazonaws.com/eosnodeosversion/index.html)


使用方法:

切换到下面目录下

    cd /usr/local/bin/

下载nodeos

    wget https://s3-ap-northeast-1.amazonaws.com/eosnodeosversion/1.1.10.zip

查看目录

    root@jump-Tokyo-2:/usr/local/bin# ll
    total 65816
    drwxr-xr-x  2 root root 4096 Jul 19 08:56 ./
    drwxr-xr-x 11 root root 4096 Jul 19 07:43 ../
    -rwxr-xr-x  1 root root  8574928 Jul 19 08:56 cleos*
    -rwxr-xr-x  1 root root  7891976 Jul 19 08:56 keosd*
    -rwxr-xr-x  1 root root 50897224 Jul 19 08:56 nodeos*

请确保这三个文件有执行权限，如果没有的话，请添加执行权限

验证版本是否正确

    root@jump-Tokyo-2:/usr/local/bin# nodeos -v
    2550604198
