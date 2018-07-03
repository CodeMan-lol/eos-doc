# bp_deploy

**1、环境说明**
Ubuntu16.04

    # apt-get update -y
    # apt install -y lrzsz tree htop python-pip git wget telnet

**2、克隆eosio代码**
    
    # mkdir -p /opt/EOS-Mainnet && cd /opt/EOS-Mainnet
    # git clone https://github.com/EOS-Mainnet/eos.git --recursive

代码目录如下：

![](https://i.imgur.com/r71WhYP.png) 

**3、查看编译的代码版本**

注意升级版本都是已mainnet开头的

![](https://i.imgur.com/sDT8hc8.png)

    # git checkout -b mainnet-1.0.7
     Switched to a new branch 'mainnet-1.0.7'
    # git status
     On branch mainnet-1.0.7
     nothing to commit, working directory clean
 
**4、编译**

    # ./eosio_build.sh 

编译时间很长。。。
编译成功界面
![](https://i.imgur.com/rwvyZRk.png)

**5、make install**

    cd /opt/EOS-Mainnet/eos/build
    make install

最后会生成下面的

    -- Installing: /usr/local/bin/nodeos
    -- Installing: /usr/local/var/log/eosio
    -- Installing: /usr/local/var/lib/eosio
    -- Installing: /usr/local/bin/cleos
    -- Installing: /usr/local/bin/keosd
    -- Installing: /usr/local/bin/eosio-launcher
    -- Installing: /usr/local/bin/eosio-abigen
    -- Installing: /usr/local/bin/eosiocpp
查看版本

     # nodeos -v
     3384255047