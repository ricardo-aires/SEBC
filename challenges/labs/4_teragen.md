# Challenge 4 - HDFS Testing

As user `neymar`, used `teragen` to generate a 65,536,000-record dataset into eight files and:

    - Set the block size to 16 MB
    - Name the target directory `tgen640`
    - Use the `time` command to capture job duration

- The full `teragen` command

    ```code
    $ time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen \
    > -Dmapreduce.job.maps=8 \
    > -Ddfs.blocksize=16777216 \
    > -Dmapreduce.map.speculative=false \
    > 65536000 tgen640
    ```

- The output of the `time` command

    ```code
    real	1m18.968s
    user	0m5.607s
    sys	0m0.626s
    ```

- Output of `hdfs dfs -ls /user/neymar/tgen640` command

    ```code
    $ hdfs dfs -ls /user/neymar/tgen640
    Found 9 items
    -rw-r--r--   3 neymar haddop          0 2017-03-10 09:47 /user/neymar/tgen640/_SUCCESS
    -rw-r--r--   3 neymar haddop  819200000 2017-03-10 09:47 /user/neymar/tgen640/part-m-00000
    -rw-r--r--   3 neymar haddop  819200000 2017-03-10 09:47 /user/neymar/tgen640/part-m-00001
    -rw-r--r--   3 neymar haddop  819200000 2017-03-10 09:47 /user/neymar/tgen640/part-m-00002
    -rw-r--r--   3 neymar haddop  819200000 2017-03-10 09:47 /user/neymar/tgen640/part-m-00003
    -rw-r--r--   3 neymar haddop  819200000 2017-03-10 09:47 /user/neymar/tgen640/part-m-00004
    -rw-r--r--   3 neymar haddop  819200000 2017-03-10 09:47 /user/neymar/tgen640/part-m-00005
    -rw-r--r--   3 neymar haddop  819200000 2017-03-10 09:47 /user/neymar/tgen640/part-m-00006
    -rw-r--r--   3 neymar haddop  819200000 2017-03-10 09:47 /user/neymar/tgen640/part-m-00007
    ```
- Blocks associated with this directory

    ```code
    $ hdfs fsck /user/neymar/tgen640 -blocks
    Connecting to namenode via http://ip-172-31-17-22.eu-west-1.compute.internal:50070
    FSCK started by neymar (auth:SIMPLE) from /172.31.17.22 for path /user/neymar/tgen640 at Fri Mar 10 09:51:16 UTC 2017
    .........Status: HEALTHY
    Total size:	6553600000 B
    Total dirs:	1
    Total files:	9
    Total symlinks:		0
    Total blocks (validated):	392 (avg. block size 16718367 B)
    Minimally replicated blocks:	392 (100.0 %)
    Over-replicated blocks:	0 (0.0 %)
    Under-replicated blocks:	0 (0.0 %)
    Mis-replicated blocks:		0 (0.0 %)
    Default replication factor:	3
    Average block replication:	3.0
    Corrupt blocks:		0
    Missing replicas:		0 (0.0 %)
    Number of data-nodes:		4
    Number of racks:		1
    FSCK ended at Fri Mar 10 09:51:16 UTC 2017 in 29 milliseconds


    The filesystem under path '/user/neymar/tgen640' is HEALTHY
    ```