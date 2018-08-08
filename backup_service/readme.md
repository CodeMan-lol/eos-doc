# 备份服务使用AWS S3进行备份

aws s3服务在同一区域，上传或下载文件速度通过内网传输，很快。而且不收费用，所有选择使用S3进行备份数据

1、在备份服务器上面安装aws cli（环境为Ubuntu16.04）

部署pip

      apt install python-pip

安装 AWS CLI：

    apt install awscli -y

配置aws cli

    # aws configure
    AWS Access Key ID [****************BCXQ]: AKIAO42U2MJCTVDEBCXQ                           ##密钥ID
    AWS Secret Access Key [****************uZYw]: XHS7YRHf0u104GCj/UOZa0TfyJblmfKAOf1fuZYw   ##密钥key
    Default region name [xxxx]: cn-north-1                                                   ##区域
    Default output format [json]: json                                                       ##输出格式
    
查看S3，验证是否正确

    root@eostestserver-01:~# aws s3 ls s3://eosstorebp
       PRE eos-mbp/
       PRE eos-open-fn-1-1/
       PRE eos-sbp1/
    



2、备份执行脚本

    #!/bin/bash
    rm -rf /opt/eosbackup/*.tar.gz
    #
    storebp=`date +%F\-%H_%M_%S`
    #aws s3api put-object --bucket eosstorebp --key ${storebp}/ --region ap-northeast-1 |tee /root/syncs3.log  2>&1
    #tar
    cd /data/eos-data/
    tar zcvf /opt/eosbackup/${storebp}.tar.gz .
    #sync_s3
    cd /opt/eosbackup/
    aws s3 sync . s3://eosstorebp/ --acl public-read