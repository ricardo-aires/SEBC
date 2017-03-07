# Test HDFS performance

1. Create an end-user Linux account named with your GitHub handle

    ```code
    useradd ricardo-aires
    ```

1. Create a home HDFS directory for this user as well

    ```code
    $ su - hdfs
    $ hdfs dfs -mkdir /user/ricardo-aires
    $ hdfs dfs -chown ricardo-aires:haddop /user/ricardo-aires
    ```

1. Create a 10 GB file using teragen, as the new user and:

    - Set the number of mappers to four
    - Limit the block size to 32 MB
    - Land the result under your user's home directory
    - Use the time command to report the job's duration

    ```code
    $ time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen \
    > -Dmapreduce.job.maps=4 \
    > -Ddfs.blocksize=33554432 \
    > -Dmapreduce.map.speculative=false \
    > 107374182 file10G
    17/03/07 10:50:27 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-16-248.eu-west-1.compute.internal/172.31.16.248:8032
    17/03/07 10:50:28 INFO terasort.TeraSort: Generating 107374182 using 4
    17/03/07 10:50:28 INFO mapreduce.JobSubmitter: number of splits:4
    17/03/07 10:50:28 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1488814209622_0004
    17/03/07 10:50:29 INFO impl.YarnClientImpl: Submitted application application_1488814209622_0004
    17/03/07 10:50:29 INFO mapreduce.Job: The url to track the job: http://ip-172-31-16-248.eu-west-1.compute.internal:8088/proxy/application_1488814209622_0004/
    17/03/07 10:50:29 INFO mapreduce.Job: Running job: job_1488814209622_0004
    17/03/07 10:50:35 INFO mapreduce.Job: Job job_1488814209622_0004 running in uber mode : false
    17/03/07 10:50:35 INFO mapreduce.Job:  map 0% reduce 0%
    17/03/07 10:50:46 INFO mapreduce.Job:  map 12% reduce 0%
    17/03/07 10:50:49 INFO mapreduce.Job:  map 16% reduce 0%
    17/03/07 10:50:52 INFO mapreduce.Job:  map 19% reduce 0%
    17/03/07 10:50:55 INFO mapreduce.Job:  map 22% reduce 0%
    17/03/07 10:50:58 INFO mapreduce.Job:  map 23% reduce 0%
    17/03/07 10:51:01 INFO mapreduce.Job:  map 26% reduce 0%
    17/03/07 10:51:04 INFO mapreduce.Job:  map 28% reduce 0%
    17/03/07 10:51:07 INFO mapreduce.Job:  map 31% reduce 0%
    17/03/07 10:51:10 INFO mapreduce.Job:  map 34% reduce 0%
    17/03/07 10:51:14 INFO mapreduce.Job:  map 36% reduce 0%
    17/03/07 10:51:17 INFO mapreduce.Job:  map 39% reduce 0%
    17/03/07 10:51:20 INFO mapreduce.Job:  map 41% reduce 0%
    17/03/07 10:51:22 INFO mapreduce.Job:  map 42% reduce 0%
    17/03/07 10:51:23 INFO mapreduce.Job:  map 43% reduce 0%
    17/03/07 10:51:26 INFO mapreduce.Job:  map 46% reduce 0%
    17/03/07 10:51:29 INFO mapreduce.Job:  map 48% reduce 0%
    17/03/07 10:51:32 INFO mapreduce.Job:  map 50% reduce 0%
    17/03/07 10:51:35 INFO mapreduce.Job:  map 53% reduce 0%
    17/03/07 10:51:37 INFO mapreduce.Job:  map 54% reduce 0%
    17/03/07 10:51:38 INFO mapreduce.Job:  map 55% reduce 0%
    17/03/07 10:51:40 INFO mapreduce.Job:  map 57% reduce 0%
    17/03/07 10:51:43 INFO mapreduce.Job:  map 59% reduce 0%
    17/03/07 10:51:44 INFO mapreduce.Job:  map 60% reduce 0%
    17/03/07 10:51:46 INFO mapreduce.Job:  map 63% reduce 0%
    17/03/07 10:51:49 INFO mapreduce.Job:  map 65% reduce 0%
    17/03/07 10:51:53 INFO mapreduce.Job:  map 67% reduce 0%
    17/03/07 10:51:56 INFO mapreduce.Job:  map 70% reduce 0%
    17/03/07 10:51:59 INFO mapreduce.Job:  map 73% reduce 0%
    17/03/07 10:52:02 INFO mapreduce.Job:  map 75% reduce 0%
    17/03/07 10:52:05 INFO mapreduce.Job:  map 78% reduce 0%
    17/03/07 10:52:08 INFO mapreduce.Job:  map 81% reduce 0%
    17/03/07 10:52:11 INFO mapreduce.Job:  map 84% reduce 0%
    17/03/07 10:52:14 INFO mapreduce.Job:  map 86% reduce 0%
    17/03/07 10:52:17 INFO mapreduce.Job:  map 88% reduce 0%
    17/03/07 10:52:20 INFO mapreduce.Job:  map 91% reduce 0%
    17/03/07 10:52:23 INFO mapreduce.Job:  map 93% reduce 0%
    17/03/07 10:52:26 INFO mapreduce.Job:  map 96% reduce 0%
    17/03/07 10:52:29 INFO mapreduce.Job:  map 98% reduce 0%
    17/03/07 10:52:32 INFO mapreduce.Job:  map 100% reduce 0%
    17/03/07 10:52:33 INFO mapreduce.Job: Job job_1488814209622_0004 completed successfully
    17/03/07 10:52:34 INFO mapreduce.Job: Counters: 31
    	File System Counters
    		FILE: Number of bytes read=0
    		FILE: Number of bytes written=491020
    		FILE: Number of read operations=0
    		FILE: Number of large read operations=0
    		FILE: Number of write operations=0
    		HDFS: Number of bytes read=344
    		HDFS: Number of bytes written=10737418200
    		HDFS: Number of read operations=16
    		HDFS: Number of large read operations=0
    		HDFS: Number of write operations=8
    	Job Counters 
    		Launched map tasks=4
    		Other local map tasks=4
    		Total time spent by all maps in occupied slots (ms)=457962
    		Total time spent by all reduces in occupied slots (ms)=0
    		Total time spent by all map tasks (ms)=457962
    		Total vcore-seconds taken by all map tasks=457962
    		Total megabyte-seconds taken by all map tasks=468953088
    	Map-Reduce Framework
    		Map input records=107374182
    		Map output records=107374182
    		Input split bytes=344
    		Spilled Records=0
    		Failed Shuffles=0
    		Merged Map outputs=0
    		GC time elapsed (ms)=1920
    		CPU time spent (ms)=159750
    		Physical memory (bytes) snapshot=760983552
    		Virtual memory (bytes) snapshot=6254419968
    		Total committed heap usage (bytes)=813694976
    	org.apache.hadoop.examples.terasort.TeraGen$Counters
    		CHECKSUM=230593859918397906
    	File Input Format Counters 
    		Bytes Read=0
    	File Output Format Counters 
    		Bytes Written=10737418200
    
    real	2m9.044s
    user	0m5.686s
    sys	0m0.713s
    $ 
    ```

1. Run the terasort command on this file. Use the time command to report the job's duration and land the result under your user's home directory.

    ```code
    $ time hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort file10G file10Gsort
    17/03/07 10:58:13 INFO terasort.TeraSort: starting
    17/03/07 10:58:15 INFO input.FileInputFormat: Total input paths to process : 4
    Spent 290ms computing base-splits.
    Spent 7ms computing TeraScheduler splits.
    Computing input splits took 297ms
    Sampling 10 splits of 320
    Making 8 from 100000 sampled records
    Computing parititions took 1022ms
    Spent 1322ms computing partitions.
    17/03/07 10:58:16 INFO client.RMProxy: Connecting to ResourceManager at ip-172-31-16-248.eu-west-1.compute.internal/172.31.16.248:8032
    17/03/07 10:58:17 INFO mapreduce.JobSubmitter: number of splits:320
    17/03/07 10:58:17 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1488814209622_0005
    17/03/07 10:58:17 INFO impl.YarnClientImpl: Submitted application application_1488814209622_0005
    17/03/07 10:58:17 INFO mapreduce.Job: The url to track the job: http://ip-172-31-16-248.eu-west-1.compute.internal:8088/proxy/application_1488814209622_0005/
    17/03/07 10:58:17 INFO mapreduce.Job: Running job: job_1488814209622_0005
    17/03/07 10:58:23 INFO mapreduce.Job: Job job_1488814209622_0005 running in uber mode : false
    17/03/07 10:58:23 INFO mapreduce.Job:  map 0% reduce 0%
    17/03/07 10:58:34 INFO mapreduce.Job:  map 2% reduce 0%
    17/03/07 10:58:35 INFO mapreduce.Job:  map 4% reduce 0%
    17/03/07 10:58:44 INFO mapreduce.Job:  map 5% reduce 0%
    17/03/07 10:58:46 INFO mapreduce.Job:  map 8% reduce 0%
    17/03/07 10:58:55 INFO mapreduce.Job:  map 9% reduce 0%
    17/03/07 10:58:56 INFO mapreduce.Job:  map 11% reduce 0%
    17/03/07 10:59:04 INFO mapreduce.Job:  map 12% reduce 0%
    17/03/07 10:59:05 INFO mapreduce.Job:  map 13% reduce 0%
    17/03/07 10:59:06 INFO mapreduce.Job:  map 14% reduce 0%
    17/03/07 10:59:07 INFO mapreduce.Job:  map 15% reduce 0%
    17/03/07 10:59:15 INFO mapreduce.Job:  map 17% reduce 0%
    17/03/07 10:59:16 INFO mapreduce.Job:  map 18% reduce 0%
    17/03/07 10:59:17 INFO mapreduce.Job:  map 19% reduce 0%
    17/03/07 10:59:25 INFO mapreduce.Job:  map 20% reduce 0%
    17/03/07 10:59:26 INFO mapreduce.Job:  map 22% reduce 0%
    17/03/07 10:59:33 INFO mapreduce.Job:  map 23% reduce 0%
    17/03/07 10:59:35 INFO mapreduce.Job:  map 24% reduce 0%
    17/03/07 10:59:36 INFO mapreduce.Job:  map 26% reduce 0%
    17/03/07 10:59:44 INFO mapreduce.Job:  map 27% reduce 0%
    17/03/07 10:59:45 INFO mapreduce.Job:  map 28% reduce 0%
    17/03/07 10:59:46 INFO mapreduce.Job:  map 30% reduce 0%
    17/03/07 10:59:54 INFO mapreduce.Job:  map 32% reduce 0%
    17/03/07 10:59:56 INFO mapreduce.Job:  map 33% reduce 0%
    17/03/07 10:59:57 INFO mapreduce.Job:  map 34% reduce 0%
    17/03/07 11:00:04 INFO mapreduce.Job:  map 35% reduce 0%
    17/03/07 11:00:05 INFO mapreduce.Job:  map 36% reduce 0%
    17/03/07 11:00:06 INFO mapreduce.Job:  map 37% reduce 0%
    17/03/07 11:00:07 INFO mapreduce.Job:  map 38% reduce 0%
    17/03/07 11:00:14 INFO mapreduce.Job:  map 39% reduce 0%
    17/03/07 11:00:15 INFO mapreduce.Job:  map 40% reduce 0%
    17/03/07 11:00:16 INFO mapreduce.Job:  map 41% reduce 0%
    17/03/07 11:00:23 INFO mapreduce.Job:  map 42% reduce 0%
    17/03/07 11:00:24 INFO mapreduce.Job:  map 43% reduce 0%
    17/03/07 11:00:26 INFO mapreduce.Job:  map 45% reduce 0%
    17/03/07 11:00:33 INFO mapreduce.Job:  map 46% reduce 0%
    17/03/07 11:00:34 INFO mapreduce.Job:  map 47% reduce 0%
    17/03/07 11:00:36 INFO mapreduce.Job:  map 48% reduce 0%
    17/03/07 11:00:37 INFO mapreduce.Job:  map 49% reduce 0%
    17/03/07 11:00:44 INFO mapreduce.Job:  map 50% reduce 0%
    17/03/07 11:00:45 INFO mapreduce.Job:  map 51% reduce 0%
    17/03/07 11:00:46 INFO mapreduce.Job:  map 52% reduce 0%
    17/03/07 11:00:53 INFO mapreduce.Job:  map 53% reduce 0%
    17/03/07 11:00:55 INFO mapreduce.Job:  map 55% reduce 0%
    17/03/07 11:00:56 INFO mapreduce.Job:  map 56% reduce 0%
    17/03/07 11:01:04 INFO mapreduce.Job:  map 57% reduce 0%
    17/03/07 11:01:06 INFO mapreduce.Job:  map 58% reduce 0%
    17/03/07 11:01:07 INFO mapreduce.Job:  map 60% reduce 0%
    17/03/07 11:01:15 INFO mapreduce.Job:  map 61% reduce 0%
    17/03/07 11:01:16 INFO mapreduce.Job:  map 62% reduce 0%
    17/03/07 11:01:17 INFO mapreduce.Job:  map 63% reduce 0%
    17/03/07 11:01:18 INFO mapreduce.Job:  map 64% reduce 0%
    17/03/07 11:01:25 INFO mapreduce.Job:  map 65% reduce 0%
    17/03/07 11:01:26 INFO mapreduce.Job:  map 66% reduce 0%
    17/03/07 11:01:27 INFO mapreduce.Job:  map 67% reduce 0%
    17/03/07 11:01:28 INFO mapreduce.Job:  map 68% reduce 0%
    17/03/07 11:01:35 INFO mapreduce.Job:  map 69% reduce 0%
    17/03/07 11:01:36 INFO mapreduce.Job:  map 70% reduce 0%
    17/03/07 11:01:37 INFO mapreduce.Job:  map 71% reduce 0%
    17/03/07 11:01:44 INFO mapreduce.Job:  map 72% reduce 0%
    17/03/07 11:01:45 INFO mapreduce.Job:  map 73% reduce 0%
    17/03/07 11:01:47 INFO mapreduce.Job:  map 74% reduce 0%
    17/03/07 11:01:48 INFO mapreduce.Job:  map 75% reduce 0%
    17/03/07 11:01:55 INFO mapreduce.Job:  map 76% reduce 0%
    17/03/07 11:01:56 INFO mapreduce.Job:  map 78% reduce 0%
    17/03/07 11:01:57 INFO mapreduce.Job:  map 79% reduce 0%
    17/03/07 11:02:05 INFO mapreduce.Job:  map 80% reduce 0%
    17/03/07 11:02:06 INFO mapreduce.Job:  map 81% reduce 0%
    17/03/07 11:02:07 INFO mapreduce.Job:  map 82% reduce 0%
    17/03/07 11:02:13 INFO mapreduce.Job:  map 83% reduce 0%
    17/03/07 11:02:15 INFO mapreduce.Job:  map 84% reduce 0%
    17/03/07 11:02:17 INFO mapreduce.Job:  map 85% reduce 0%
    17/03/07 11:02:20 INFO mapreduce.Job:  map 85% reduce 3%
    17/03/07 11:02:21 INFO mapreduce.Job:  map 85% reduce 5%
    17/03/07 11:02:23 INFO mapreduce.Job:  map 85% reduce 6%
    17/03/07 11:02:24 INFO mapreduce.Job:  map 85% reduce 10%
    17/03/07 11:02:25 INFO mapreduce.Job:  map 85% reduce 11%
    17/03/07 11:02:27 INFO mapreduce.Job:  map 85% reduce 14%
    17/03/07 11:02:28 INFO mapreduce.Job:  map 86% reduce 15%
    17/03/07 11:02:29 INFO mapreduce.Job:  map 87% reduce 16%
    17/03/07 11:02:30 INFO mapreduce.Job:  map 87% reduce 20%
    17/03/07 11:02:32 INFO mapreduce.Job:  map 87% reduce 22%
    17/03/07 11:02:33 INFO mapreduce.Job:  map 87% reduce 23%
    17/03/07 11:02:36 INFO mapreduce.Job:  map 87% reduce 24%
    17/03/07 11:02:37 INFO mapreduce.Job:  map 88% reduce 24%
    17/03/07 11:02:38 INFO mapreduce.Job:  map 88% reduce 25%
    17/03/07 11:02:39 INFO mapreduce.Job:  map 88% reduce 26%
    17/03/07 11:02:42 INFO mapreduce.Job:  map 89% reduce 26%
    17/03/07 11:02:46 INFO mapreduce.Job:  map 90% reduce 26%
    17/03/07 11:02:53 INFO mapreduce.Job:  map 91% reduce 26%
    17/03/07 11:02:54 INFO mapreduce.Job:  map 92% reduce 26%
    17/03/07 11:02:56 INFO mapreduce.Job:  map 92% reduce 27%
    17/03/07 11:03:01 INFO mapreduce.Job:  map 93% reduce 27%
    17/03/07 11:03:07 INFO mapreduce.Job:  map 94% reduce 27%
    17/03/07 11:03:10 INFO mapreduce.Job:  map 95% reduce 27%
    17/03/07 11:03:12 INFO mapreduce.Job:  map 95% reduce 28%
    17/03/07 11:03:17 INFO mapreduce.Job:  map 96% reduce 28%
    17/03/07 11:03:18 INFO mapreduce.Job:  map 97% reduce 28%
    17/03/07 11:03:25 INFO mapreduce.Job:  map 98% reduce 28%
    17/03/07 11:03:27 INFO mapreduce.Job:  map 98% reduce 29%
    17/03/07 11:03:30 INFO mapreduce.Job:  map 99% reduce 29%
    17/03/07 11:03:34 INFO mapreduce.Job:  map 100% reduce 29%
    17/03/07 11:03:35 INFO mapreduce.Job:  map 100% reduce 30%
    17/03/07 11:03:36 INFO mapreduce.Job:  map 100% reduce 35%
    17/03/07 11:03:37 INFO mapreduce.Job:  map 100% reduce 37%
    17/03/07 11:03:38 INFO mapreduce.Job:  map 100% reduce 44%
    17/03/07 11:03:39 INFO mapreduce.Job:  map 100% reduce 55%
    17/03/07 11:03:40 INFO mapreduce.Job:  map 100% reduce 58%
    17/03/07 11:03:42 INFO mapreduce.Job:  map 100% reduce 61%
    17/03/07 11:03:43 INFO mapreduce.Job:  map 100% reduce 63%
    17/03/07 11:03:45 INFO mapreduce.Job:  map 100% reduce 65%
    17/03/07 11:03:46 INFO mapreduce.Job:  map 100% reduce 68%
    17/03/07 11:03:48 INFO mapreduce.Job:  map 100% reduce 70%
    17/03/07 11:03:49 INFO mapreduce.Job:  map 100% reduce 72%
    17/03/07 11:03:50 INFO mapreduce.Job:  map 100% reduce 73%
    17/03/07 11:03:51 INFO mapreduce.Job:  map 100% reduce 74%
    17/03/07 11:03:52 INFO mapreduce.Job:  map 100% reduce 77%
    17/03/07 11:03:53 INFO mapreduce.Job:  map 100% reduce 78%
    17/03/07 11:03:54 INFO mapreduce.Job:  map 100% reduce 79%
    17/03/07 11:03:55 INFO mapreduce.Job:  map 100% reduce 81%
    17/03/07 11:03:56 INFO mapreduce.Job:  map 100% reduce 82%
    17/03/07 11:03:57 INFO mapreduce.Job:  map 100% reduce 84%
    17/03/07 11:03:58 INFO mapreduce.Job:  map 100% reduce 86%
    17/03/07 11:03:59 INFO mapreduce.Job:  map 100% reduce 87%
    17/03/07 11:04:00 INFO mapreduce.Job:  map 100% reduce 88%
    17/03/07 11:04:01 INFO mapreduce.Job:  map 100% reduce 89%
    17/03/07 11:04:02 INFO mapreduce.Job:  map 100% reduce 90%
    17/03/07 11:04:04 INFO mapreduce.Job:  map 100% reduce 92%
    17/03/07 11:04:05 INFO mapreduce.Job:  map 100% reduce 93%
    17/03/07 11:04:07 INFO mapreduce.Job:  map 100% reduce 95%
    17/03/07 11:04:08 INFO mapreduce.Job:  map 100% reduce 96%
    17/03/07 11:04:09 INFO mapreduce.Job:  map 100% reduce 97%
    17/03/07 11:04:12 INFO mapreduce.Job:  map 100% reduce 98%
    17/03/07 11:04:18 INFO mapreduce.Job:  map 100% reduce 99%
    17/03/07 11:04:20 INFO mapreduce.Job:  map 100% reduce 100%
    17/03/07 11:04:21 INFO mapreduce.Job: Job job_1488814209622_0005 completed successfully
    17/03/07 11:04:21 INFO mapreduce.Job: Counters: 50
    	File System Counters
    		FILE: Number of bytes read=4805284405
    		FILE: Number of bytes written=9543640776
    		FILE: Number of read operations=0
    		FILE: Number of large read operations=0
    		FILE: Number of write operations=0
    		HDFS: Number of bytes read=10737469400
    		HDFS: Number of bytes written=10737418200
    		HDFS: Number of read operations=984
    		HDFS: Number of large read operations=0
    		HDFS: Number of write operations=16
    	Job Counters 
    		Launched map tasks=320
    		Launched reduce tasks=8
    		Data-local map tasks=318
    		Rack-local map tasks=2
    		Total time spent by all maps in occupied slots (ms)=2794544
    		Total time spent by all reduces in occupied slots (ms)=831698
    		Total time spent by all map tasks (ms)=2794544
    		Total time spent by all reduce tasks (ms)=831698
    		Total vcore-seconds taken by all map tasks=2794544
    		Total vcore-seconds taken by all reduce tasks=831698
    		Total megabyte-seconds taken by all map tasks=2861613056
    		Total megabyte-seconds taken by all reduce tasks=851658752
    	Map-Reduce Framework
    		Map input records=107374182
    		Map output records=107374182
    		Map output bytes=10952166564
    		Map output materialized bytes=4697597105
    		Input split bytes=51200
    		Combine input records=0
    		Combine output records=0
    		Reduce input groups=107374182
    		Reduce shuffle bytes=4697597105
    		Reduce input records=107374182
    		Reduce output records=107374182
    		Spilled Records=214748364
    		Shuffled Maps =2560
    		Failed Shuffles=0
    		Merged Map outputs=2560
    		GC time elapsed (ms)=37008
    		CPU time spent (ms)=1561240
    		Physical memory (bytes) snapshot=155661438976
    		Virtual memory (bytes) snapshot=513448148992
    		Total committed heap usage (bytes)=185736888320
    	Shuffle Errors
    		BAD_ID=0
    		CONNECTION=0
    		IO_ERROR=0
    		WRONG_LENGTH=0
    		WRONG_MAP=0
    		WRONG_REDUCE=0
    	File Input Format Counters 
    		Bytes Read=10737418200
    	File Output Format Counters 
    		Bytes Written=10737418200
    17/03/07 11:04:21 INFO terasort.TeraSort: done
    
    real	6m9.039s
    user	0m9.790s
    sys	0m0.952s
    $ 
    ```
