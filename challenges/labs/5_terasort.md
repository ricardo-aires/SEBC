# Challenge 5 - Kerberize the cluster

## Final State

- Copy of the command and output of `terasort`

    ```code
    $ time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort tgen640 tsort640m
    17/03/10 10:20:48 INFO terasort.TeraSort: starting
    17/03/10 10:20:50 INFO hdfs.DFSClient: Created token for neymar: HDFS_DELEGATION_TOKEN owner=neymar@RICARDO-AIRES.ES, renewer=yarn, realUser=, issueDate=1489141250424, maxDate=1489746050424, sequenceNumber=2, masterKeyId=2 on 172.31.17.22:8020
    17/03/10 10:20:50 INFO security.TokenCache: Got dt for hdfs://ip-172-31-17-22.eu-west-1.compute.internal:8020; Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.17.22:8020, Ident: (token for neymar: HDFS_DELEGATION_TOKEN owner=neymar@RICARDO-AIRES.ES, renewer=yarn, realUser=, issueDate=1489141250424, maxDate=1489746050424, sequenceNumber=2, masterKeyId=2)
    17/03/10 10:20:50 INFO input.FileInputFormat: Total input paths to process : 8
    Spent 527ms computing base-splits.
    Spent 11ms computing TeraScheduler splits.
    Computing input splits took 539ms
    Sampling 10 splits of 392
    Making 8 from 100000 sampled records
    Computing parititions took 1189ms
    Spent 1732ms computing partitions.
    17/03/10 10:20:52 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-17-22.eu-west-1.compute.internal/172.31.17.22:8032
    17/03/10 10:20:52 INFO mapreduce.JobSubmitter: number of splits:392
    17/03/10 10:20:52 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1489140960638_0001
    17/03/10 10:20:52 INFO mapreduce.JobSubmitter: Kind: HDFS_DELEGATION_TOKEN, Service: 172.31.17.22:8020, Ident: (token for neymar: HDFS_DELEGATION_TOKEN owner=neymar@RICARDO-AIRES.ES, renewer=yarn, realUser=, issueDate=1489141250424, maxDate=1489746050424, sequenceNumber=2, masterKeyId=2)
    17/03/10 10:20:53 INFO impl.YarnClientImpl: Submitted application application_1489140960638_0001
    17/03/10 10:20:53 INFO mapreduce.Job: The url to track the job: http://ip-172-31-17-22.eu-west-1.compute.internal:8088/proxy/application_1489140960638_0001/
    17/03/10 10:20:53 INFO mapreduce.Job: Running job: job_1489140960638_0001
    17/03/10 10:21:04 INFO mapreduce.Job: Job job_1489140960638_0001 running in uber mode : false
    17/03/10 10:21:04 INFO mapreduce.Job:  map 0% reduce 0%
    17/03/10 10:21:13 INFO mapreduce.Job:  map 1% reduce 0%
    17/03/10 10:21:21 INFO mapreduce.Job:  map 2% reduce 0%
    17/03/10 10:21:25 INFO mapreduce.Job:  map 3% reduce 0%
    17/03/10 10:21:26 INFO mapreduce.Job:  map 4% reduce 0%
    17/03/10 10:21:31 INFO mapreduce.Job:  map 5% reduce 0%
    17/03/10 10:21:37 INFO mapreduce.Job:  map 6% reduce 0%
    17/03/10 10:21:38 INFO mapreduce.Job:  map 8% reduce 0%
    17/03/10 10:21:45 INFO mapreduce.Job:  map 9% reduce 0%
    17/03/10 10:21:51 INFO mapreduce.Job:  map 11% reduce 0%
    17/03/10 10:21:52 INFO mapreduce.Job:  map 12% reduce 0%
    17/03/10 10:21:59 INFO mapreduce.Job:  map 13% reduce 0%
    17/03/10 10:22:01 INFO mapreduce.Job:  map 14% reduce 0%
    17/03/10 10:22:04 INFO mapreduce.Job:  map 16% reduce 0%
    17/03/10 10:22:09 INFO mapreduce.Job:  map 17% reduce 0%
    17/03/10 10:22:15 INFO mapreduce.Job:  map 18% reduce 0%
    17/03/10 10:22:17 INFO mapreduce.Job:  map 20% reduce 0%
    17/03/10 10:22:22 INFO mapreduce.Job:  map 21% reduce 0%
    17/03/10 10:22:27 INFO mapreduce.Job:  map 22% reduce 0%
    17/03/10 10:22:28 INFO mapreduce.Job:  map 23% reduce 0%
    17/03/10 10:22:30 INFO mapreduce.Job:  map 24% reduce 0%
    17/03/10 10:22:36 INFO mapreduce.Job:  map 25% reduce 0%
    17/03/10 10:22:38 INFO mapreduce.Job:  map 26% reduce 0%
    17/03/10 10:22:41 INFO mapreduce.Job:  map 27% reduce 0%
    17/03/10 10:22:42 INFO mapreduce.Job:  map 28% reduce 0%
    17/03/10 10:22:46 INFO mapreduce.Job:  map 29% reduce 0%
    17/03/10 10:22:53 INFO mapreduce.Job:  map 31% reduce 0%
    17/03/10 10:22:55 INFO mapreduce.Job:  map 32% reduce 0%
    17/03/10 10:23:02 INFO mapreduce.Job:  map 33% reduce 0%
    17/03/10 10:23:04 INFO mapreduce.Job:  map 34% reduce 0%
    17/03/10 10:23:07 INFO mapreduce.Job:  map 36% reduce 0%
    17/03/10 10:23:14 INFO mapreduce.Job:  map 37% reduce 0%
    17/03/10 10:23:17 INFO mapreduce.Job:  map 38% reduce 0%
    17/03/10 10:23:19 INFO mapreduce.Job:  map 39% reduce 0%
    17/03/10 10:23:20 INFO mapreduce.Job:  map 40% reduce 0%
    17/03/10 10:23:24 INFO mapreduce.Job:  map 41% reduce 0%
    17/03/10 10:23:31 INFO mapreduce.Job:  map 43% reduce 0%
    17/03/10 10:23:34 INFO mapreduce.Job:  map 44% reduce 0%
    17/03/10 10:23:38 INFO mapreduce.Job:  map 45% reduce 0%
    17/03/10 10:23:43 INFO mapreduce.Job:  map 46% reduce 0%
    17/03/10 10:23:44 INFO mapreduce.Job:  map 47% reduce 0%
    17/03/10 10:23:45 INFO mapreduce.Job:  map 48% reduce 0%
    17/03/10 10:23:52 INFO mapreduce.Job:  map 49% reduce 0%
    17/03/10 10:23:54 INFO mapreduce.Job:  map 50% reduce 0%
    17/03/10 10:23:55 INFO mapreduce.Job:  map 51% reduce 0%
    17/03/10 10:23:59 INFO mapreduce.Job:  map 52% reduce 0%
    17/03/10 10:24:02 INFO mapreduce.Job:  map 53% reduce 0%
    17/03/10 10:24:07 INFO mapreduce.Job:  map 54% reduce 0%
    17/03/10 10:24:08 INFO mapreduce.Job:  map 55% reduce 0%
    17/03/10 10:24:11 INFO mapreduce.Job:  map 56% reduce 0%
    17/03/10 10:24:14 INFO mapreduce.Job:  map 57% reduce 0%
    17/03/10 10:24:19 INFO mapreduce.Job:  map 58% reduce 0%
    17/03/10 10:24:20 INFO mapreduce.Job:  map 59% reduce 0%
    17/03/10 10:24:21 INFO mapreduce.Job:  map 60% reduce 0%
    17/03/10 10:24:28 INFO mapreduce.Job:  map 61% reduce 0%
    17/03/10 10:24:31 INFO mapreduce.Job:  map 62% reduce 0%
    17/03/10 10:24:32 INFO mapreduce.Job:  map 63% reduce 0%
    17/03/10 10:24:34 INFO mapreduce.Job:  map 64% reduce 0%
    17/03/10 10:24:40 INFO mapreduce.Job:  map 65% reduce 0%
    17/03/10 10:24:43 INFO mapreduce.Job:  map 66% reduce 0%
    17/03/10 10:24:44 INFO mapreduce.Job:  map 67% reduce 0%
    17/03/10 10:24:47 INFO mapreduce.Job:  map 68% reduce 0%
    17/03/10 10:24:51 INFO mapreduce.Job:  map 69% reduce 0%
    17/03/10 10:24:55 INFO mapreduce.Job:  map 70% reduce 0%
    17/03/10 10:24:56 INFO mapreduce.Job:  map 71% reduce 0%
    17/03/10 10:24:58 INFO mapreduce.Job:  map 72% reduce 0%
    17/03/10 10:25:03 INFO mapreduce.Job:  map 73% reduce 0%
    17/03/10 10:25:08 INFO mapreduce.Job:  map 75% reduce 0%
    17/03/10 10:25:10 INFO mapreduce.Job:  map 76% reduce 0%
    17/03/10 10:25:16 INFO mapreduce.Job:  map 77% reduce 0%
    17/03/10 10:25:19 INFO mapreduce.Job:  map 78% reduce 0%
    17/03/10 10:25:20 INFO mapreduce.Job:  map 79% reduce 0%
    17/03/10 10:25:23 INFO mapreduce.Job:  map 80% reduce 0%
    17/03/10 10:25:29 INFO mapreduce.Job:  map 81% reduce 0%
    17/03/10 10:25:31 INFO mapreduce.Job:  map 82% reduce 0%
    17/03/10 10:25:32 INFO mapreduce.Job:  map 83% reduce 0%
    17/03/10 10:25:35 INFO mapreduce.Job:  map 84% reduce 0%
    17/03/10 10:25:42 INFO mapreduce.Job:  map 84% reduce 5%
    17/03/10 10:25:44 INFO mapreduce.Job:  map 84% reduce 8%
    17/03/10 10:25:45 INFO mapreduce.Job:  map 85% reduce 9%
    17/03/10 10:25:46 INFO mapreduce.Job:  map 85% reduce 12%
    17/03/10 10:25:47 INFO mapreduce.Job:  map 85% reduce 15%
    17/03/10 10:25:48 INFO mapreduce.Job:  map 85% reduce 19%
    17/03/10 10:25:49 INFO mapreduce.Job:  map 85% reduce 21%
    17/03/10 10:25:50 INFO mapreduce.Job:  map 86% reduce 21%
    17/03/10 10:25:52 INFO mapreduce.Job:  map 86% reduce 22%
    17/03/10 10:25:53 INFO mapreduce.Job:  map 86% reduce 23%
    17/03/10 10:25:54 INFO mapreduce.Job:  map 86% reduce 24%
    17/03/10 10:25:55 INFO mapreduce.Job:  map 86% reduce 25%
    17/03/10 10:25:56 INFO mapreduce.Job:  map 87% reduce 25%
    17/03/10 10:25:59 INFO mapreduce.Job:  map 88% reduce 25%
    17/03/10 10:26:02 INFO mapreduce.Job:  map 88% reduce 26%
    17/03/10 10:26:06 INFO mapreduce.Job:  map 89% reduce 26%
    17/03/10 10:26:09 INFO mapreduce.Job:  map 90% reduce 26%
    17/03/10 10:26:15 INFO mapreduce.Job:  map 91% reduce 26%
    17/03/10 10:26:20 INFO mapreduce.Job:  map 91% reduce 27%
    17/03/10 10:26:21 INFO mapreduce.Job:  map 92% reduce 27%
    17/03/10 10:26:27 INFO mapreduce.Job:  map 93% reduce 27%
    17/03/10 10:26:29 INFO mapreduce.Job:  map 94% reduce 27%
    17/03/10 10:26:35 INFO mapreduce.Job:  map 95% reduce 27%
    17/03/10 10:26:36 INFO mapreduce.Job:  map 95% reduce 28%
    17/03/10 10:26:39 INFO mapreduce.Job:  map 96% reduce 28%
    17/03/10 10:26:45 INFO mapreduce.Job:  map 97% reduce 28%
    17/03/10 10:26:51 INFO mapreduce.Job:  map 98% reduce 28%
    17/03/10 10:26:52 INFO mapreduce.Job:  map 98% reduce 29%
    17/03/10 10:26:55 INFO mapreduce.Job:  map 99% reduce 29%
    17/03/10 10:26:59 INFO mapreduce.Job:  map 100% reduce 29%
    17/03/10 10:27:00 INFO mapreduce.Job:  map 100% reduce 32%
    17/03/10 10:27:01 INFO mapreduce.Job:  map 100% reduce 40%
    17/03/10 10:27:02 INFO mapreduce.Job:  map 100% reduce 44%
    17/03/10 10:27:03 INFO mapreduce.Job:  map 100% reduce 54%
    17/03/10 10:27:04 INFO mapreduce.Job:  map 100% reduce 59%
    17/03/10 10:27:05 INFO mapreduce.Job:  map 100% reduce 60%
    17/03/10 10:27:06 INFO mapreduce.Job:  map 100% reduce 61%
    17/03/10 10:27:07 INFO mapreduce.Job:  map 100% reduce 67%
    17/03/10 10:27:08 INFO mapreduce.Job:  map 100% reduce 68%
    17/03/10 10:27:09 INFO mapreduce.Job:  map 100% reduce 70%
    17/03/10 10:27:10 INFO mapreduce.Job:  map 100% reduce 74%
    17/03/10 10:27:11 INFO mapreduce.Job:  map 100% reduce 77%
    17/03/10 10:27:12 INFO mapreduce.Job:  map 100% reduce 79%
    17/03/10 10:27:13 INFO mapreduce.Job:  map 100% reduce 81%
    17/03/10 10:27:14 INFO mapreduce.Job:  map 100% reduce 83%
    17/03/10 10:27:15 INFO mapreduce.Job:  map 100% reduce 85%
    17/03/10 10:27:16 INFO mapreduce.Job:  map 100% reduce 91%
    17/03/10 10:27:17 INFO mapreduce.Job:  map 100% reduce 92%
    17/03/10 10:27:19 INFO mapreduce.Job:  map 100% reduce 94%
    17/03/10 10:27:20 INFO mapreduce.Job:  map 100% reduce 95%
    17/03/10 10:27:21 INFO mapreduce.Job:  map 100% reduce 96%
    17/03/10 10:27:22 INFO mapreduce.Job:  map 100% reduce 99%
    17/03/10 10:27:24 INFO mapreduce.Job:  map 100% reduce 100%
    17/03/10 10:27:26 INFO mapreduce.Job: Job job_1489140960638_0001 completed successfully
    17/03/10 10:27:26 INFO mapreduce.Job: Counters: 49
        File System Counters
            FILE: Number of bytes read=2926321504
            FILE: Number of bytes written=5840791570
            FILE: Number of read operations=0
            FILE: Number of large read operations=0
            FILE: Number of write operations=0
            HDFS: Number of bytes read=6553659584
            HDFS: Number of bytes written=6553600000
            HDFS: Number of read operations=1200
            HDFS: Number of large read operations=0
            HDFS: Number of write operations=16
        Job Counters 
            Launched map tasks=392
            Launched reduce tasks=8
            Data-local map tasks=392
            Total time spent by all maps in occupied slots (ms)=3554623
            Total time spent by all reduces in occupied slots (ms)=759585
            Total time spent by all map tasks (ms)=3554623
            Total time spent by all reduce tasks (ms)=759585
            Total vcore-seconds taken by all map tasks=3554623
            Total vcore-seconds taken by all reduce tasks=759585
            Total megabyte-seconds taken by all map tasks=3639933952
            Total megabyte-seconds taken by all reduce tasks=777815040
        Map-Reduce Framework
            Map input records=65536000
            Map output records=65536000
            Map output bytes=6684672000
            Map output materialized bytes=2864397760
            Input split bytes=59584
            Combine input records=0
            Combine output records=0
            Reduce input groups=65536000
            Reduce shuffle bytes=2864397760
            Reduce input records=65536000
            Reduce output records=65536000
            Spilled Records=131072000
            Shuffled Maps =3136
            Failed Shuffles=0
            Merged Map outputs=3136
            GC time elapsed (ms)=40454
            CPU time spent (ms)=1504120
            Physical memory (bytes) snapshot=189477265408
            Virtual memory (bytes) snapshot=625613656064
            Total committed heap usage (bytes)=226628206592
        Shuffle Errors
            BAD_ID=0
            CONNECTION=0
            IO_ERROR=0
            WRONG_LENGTH=0
            WRONG_MAP=0
            WRONG_REDUCE=0
        File Input Format Counters 
            Bytes Read=6553600000
        File Output Format Counters 
            Bytes Written=6553600000
    17/03/10 10:27:26 INFO terasort.TeraSort: done

    real	6m38.997s
    user	0m10.049s
    sys	0m0.970s
    ```

- Copy of the command and output of `pi` in [challenges/labs/5_pi.md](5_pi.md)

- Copy of text files in `/var/kerberos/krb5kdc/` in:
  - [challenges/labs/5_kdc.conf.md](5_kdc.conf.md)
  - [challenges/labs/5_kadm5.acl.md](5_kadm5.acl.md)
    > Add the prefix `5_` and the suffix `.md`


## Steps taken

1. Install an MIT KDC on the same node as the CM server and

    ```code
    yum -y install krb5-server krb5-libs krb5-auth-dialog krb5-workstation
    ```

1. Install packages for a Kerberos client on all other hosts:

    ```code
    yum -y install krb5-workstation krb5-libs krb5-auth-dialog
    ```

1. Setup realm after your GitHub handle and use `ES` as a suffix, `RICARDO-AIRES.ES`.

    ```code
    $ cat /var/kerberos/krb5kdc/kdc.conf
    [kdcdefaults]
    kdc_ports = 88
    kdc_tcp_ports = 88

    [realms]
    RICARDO-AIRES.ES = {
    #master_key_type = aes256-cts
    acl_file = /var/kerberos/krb5kdc/kadm5.acl
    dict_file = /usr/share/dict/words
    admin_keytab = /var/kerberos/krb5kdc/kadm5.keytab
    supported_enctypes = aes256-cts:normal aes128-cts:normal des3-hmac-sha1:normal arcfour-hmac:normal des-hmac-sha1:normal des-cbc-md5:normal des-cbc-crc:normal
    max_life = 1d
    max_renewable_life = 7d
    }
    ```

1. Setup `/etc/krb5.conf` on all hosts

    ```code
    [logging]
    default = FILE:/var/log/krb5libs.log
    kdc = FILE:/var/log/krb5kdc.log
    admin_server = FILE:/var/log/kadmind.log

    [libdefaults]
    default_realm = RICARDO-AIRES.ES
    dns_lookup_realm = false
    dns_lookup_kdc = false
    ticket_lifetime = 24h
    renew_lifetime = 7d
    forwardable = true
    udp_preference_limit = 1
    default_tgs_enctypes = arcfour-hmac
    default_tkt_enctypes = arcfour-hmac 

    [realms] 
    RICARDO-AIRES.ES = {
    kdc = ip-172-31-17-22.eu-west-1.compute.internal
    admin_server = ip-172-31-17-22.eu-west-1.compute.internal
    }

    [domain_realm]
    .eu-west-1.compute.internal = RICARDO-AIRES.ES
    eu-west-1.compute.internal = RICARDO-AIRES.ES
    ```

1. Create the database using the kdb5_util utility. (Server)

    ```code
    $ /usr/sbin/kdb5_util create -s
    Loading random data
    Initializing database '/var/kerberos/krb5kdc/principal' for realm 'RICARDO-AIRES.ES',
    master key name 'K/M@RICARDO-AIRES.ES'
    You will be prompted for the database Master Password.
    It is important that you NOT FORGET this password.
    Enter KDC database master key:
    Re-enter KDC database master key to verify:
    ```

1. Create Kerberos principals for `neymar`, `ronaldo`, and `cloudera-scm`

    ```code
    $ kadmin.local
    Authenticating as principal root/admin@RICARDO-AIRES.ES with password.
    kadmin.local:  addprinc cloudera-scm@RICARDO-AIRES.ES
    WARNING: no policy specified for cloudera-scm@RICARDO-AIRES.ES; defaulting to no policy
    Enter password for principal "cloudera-scm@RICARDO-AIRES.ES": 
    Re-enter password for principal "cloudera-scm@RICARDO-AIRES.ES": 
    Principal "cloudera-scm@RICARDO-AIRES.ES" created.
    kadmin.local:  addprinc neymar@RICARDO-AIRES.ES
    WARNING: no policy specified for neymar@RICARDO-AIRES.ES; defaulting to no policy
    Enter password for principal "neymar@RICARDO-AIRES.ES": 
    Re-enter password for principal "neymar@RICARDO-AIRES.ES": 
    Principal "neymar@RICARDO-AIRES.ES" created.
    kadmin.local:  addprinc ronaldo@RICARDO-AIRES.ES
    WARNING: no policy specified for ronaldo@RICARDO-AIRES.ES; defaulting to no policy
    Enter password for principal "ronaldo@RICARDO-AIRES.ES": 
    Re-enter password for principal "ronaldo@RICARDO-AIRES.ES": 
    Principal "ronaldo@RICARDO-AIRES.ES" created.
    kadmin.local:  
    ```

1. Give `cloudera-scm` the privileges needed to create principals and keytabs

    ```code
    $ cat /var/kerberos/krb5kdc/kadm5.acl
    cloudera-scm@RICARDO-AIRES.ES *
    ```

1. Adds the password policy to the database.

    ```code
    kadmin.local
    kadmin.local:  addpol admin
    kadmin.local:  addpol users
    kadmin.local:  addpol hosts
    kadmin.local:  exit
    ```

1. Start Kerberos using the following commands

    ```code
    service krb5kdc start
    service kadmin start
    ```

1. Enable Kerberos for the cluster

1. Run the `terasort` program as `neymar` using `/user/neymar/tgen640`

    ```code
    kinit neymar
    time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort tgen640 tsort640m
    ```

    > Copy the command and output to [challenges/labs/5_terasort.md](5_terasort.md)

1. Run the Hadoop `pi` program as the user `ronaldo`

    ```code
    kinit ronaldo
    time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar pi 10 100
    ```

    > Copy the command and output to [challenges/labs/5_pi.md](5_pi.md)
