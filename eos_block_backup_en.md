EOS-BLOCK-BACKUP

EOSSTORE shares its data backups here in case of a slow speed of data sync once EOSBP is compromised.

[Address of EOSSTORE Backup Storage](https://s3-ap-northeast-1.amazonaws.com/eosstorebp/index.html)

Description of EOSSTORE Backups

Environment: Ubuntu16.04

The parameter setting of the chain-state-db-size-mb = 20480 is 20G (20480)

You can use these backups if your parameter setting is greater than 20G, and you had better not to use them if your parameter setting is less than 20G.

Data directory is eos-data directory. There will be only blocks directory and state directory in these backups after you download them. You need to put these directories into you own data directory.

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

**Download:**

Copy the download link to relative BP nodes
    
    wget https://s3-ap-northeast-1.amazonaws.com/eosstorebp/xxx.tar.gz

**Decompression：**

    tar zxvf xxx.tar.gz

**Boot:**

Start services directly

**Attention:**

Server Address: AWS S3 in Tokyo

You can also download these backups but a bit slower if you are not using an AWS server.

The backup cycle is tentatively scheduled to be twice a day.




