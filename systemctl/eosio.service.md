# eosio systemctl启动

创建目录

    mkdir -p /usr/lib/systemd/system/
    touch /usr/lib/systemd/system/eosio.service
 
启动文件

   
    [Unit]
    Description=eosio
    
    [Service]
    User=eosio
    ExecStart=/bin/bash -c "/usr/local/bin/nodeos --config-dir /data/eos-config -d /data/eos-data > /data/eosio.log  2>&1"
    Restart=always
    
    [Install]
    WantedBy=multi-user.target
 
操作方法
    
    systemctl start eosio.service     #启动eosio
    systemctl stop eosio.service      #停止eosio
    systemctl enable eosio.service    #开启自启动eosio服务