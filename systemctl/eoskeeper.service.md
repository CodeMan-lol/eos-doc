# eoskeeper systemctl启动

创建目录

    mkdir -p /usr/lib/systemd/system/
    touch /usr/lib/systemd/system/eoskeeper.service
 
启动文件

    [Unit]
    Description=eoskeeper
    
    [Service]
    User=eosio
    ExecStart=/bin/bash -c "/usr/local/bin/eoskeeper > /dev/null  2>&1"
    Restart=always
    
    [Install]
    WantedBy=multi-user.target
 
操作方法
    
    systemctl start eoskeeper.service     #启动eoskeeper
    systemctl stop eoskeeper.service      #停止eoskeeper
    systemctl enable eoskeeper.service    #开启自启动eoskeeper服务