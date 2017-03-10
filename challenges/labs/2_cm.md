# Challenge 2: Install Cloudera Manager

## Final State

- Output of `ls /etc/yum.repos.d`

  ```code
  $ ls /etc/yum.repos.d
  CentOS-Base.repo  CentOS-Debuginfo.repo  CentOS-fasttrack.repo  CentOS-Media.repo  CentOS-Vault.repo  cloudera-manager.repo  mysql-community.repo  mysql-community-source.repo
  ```

- Copy of `cloudera-manager.repo` file in [challenges/labs/2_cloudera-manager.repo.md](2_cloudera-manager.repo.md)

- Output of the `scm_prepare_database.sh`

  ```code
  $ /usr/share/cmf/schema/scm_prepare_database.sh mysql -h ip-172-31-30-160.eu-west-1.compute.internal --scm-host ip-172-31-17-22.eu-west-1.compute.internal scm scm password
  JAVA_HOME=/usr/java/jdk1.7.0_67-cloudera
  Verifying that we can write to /etc/cloudera-scm-server
  Creating SCM configuration file in /etc/cloudera-scm-server
  Executing:  /usr/java/jdk1.7.0_67-cloudera/bin/java -cp /usr/share/java/mysql-connector-java.jar:/usr/share/java/oracle-connector-java.jar:/usr/share/cmf/schema/../lib/* com.cloudera.enterprise.dbutil.DbCommandExecutor /etc/cloudera-scm-server/db.properties com.cloudera.cmf.db.
  log4j:ERROR Could not find value for key log4j.appender.A
  log4j:ERROR Could not instantiate appender named "A".
  [2017-03-10 08:40:59,289] INFO     0[main] - com.cloudera.enterprise.dbutil.DbCommandExecutor.testDbConnection(DbCommandExecutor.java) - Successfully connected to database.
  All done, your SCM database is configured correctly!
  ```

  > It gave an error but only regarding the `log4j`, in the end the `db.properties` was setup correctly.

- First line from your server log

  ```code
  $ head -1 /var/log/cloudera-scm-server/cloudera-scm-server.log
  2017-03-10 08:45:02,858 INFO main:com.cloudera.server.cmf.Main: Starting SCM Server. JVM Args: [-Dlog4j.configuration=file:/etc/cloudera-scm-server/log4j.properties, -Dfile.encoding=UTF-8, -Dcmf.root.logger=INFO,LOGFILE, -Dcmf.log.dir=/var/log/cloudera-scm-server, -Dcmf.log.file=cloudera-scm-server.log, -Dcmf.jetty.threshhold=WARN, -Dcmf.schema.dir=/usr/share/cmf/schema, -Djava.awt.headless=true, -Djava.net.preferIPv4Stack=true, -Dpython.home=/usr/share/cmf/python, -XX:+UseConcMarkSweepGC, -XX:+UseParNewGC, -XX:+HeapDumpOnOutOfMemoryError, -Xmx2G, -XX:MaxPermSize=256m, -XX:+HeapDumpOnOutOfMemoryError, -XX:HeapDumpPath=/tmp, -XX:OnOutOfMemoryError=kill -9 %p], Args: [], Version: 5.9.1 (#8 built by jenkins on 20170112-1158 git: a66d8bbdbe8bc3ee54235e55423f2f76c7d9f3b1)
  ```

- Log line that contains the phrase `Started Jetty server`

  ```code
  $ grep "Started Jetty server" /var/log/cloudera-scm-server/cloudera-scm-server.log
  2017-03-10 08:46:42,356 INFO WebServerImpl:com.cloudera.server.cmf.WebServerImpl: Started Jetty server
  ```

- Copy of `db.properties` file in [challenges/labs/2_db.properties.md](2_db.properties.md)

## Setup Steps

1. Configure the CM repo to install the latest release

1. Install the `jdk` and CM Server and daemons

    ```code
    yum install -y oracle-j2sdk1.7 cloudera-manager-server
    ```

1. Use the `scm_prepare_database.sh` script to write your `db.properties` file

    > List the full command line in [challenges/labs/2_cm.md](2_cm.md)

    ```code
    /usr/share/cmf/schema/scm_prepare_database.sh mysql -h ip-172-31-30-160.eu-west-1.compute.internal --scm-host ip-172-31-17-22.eu-west-1.compute.internal scm scm password
    ```

1. Start the Cloudera Manager server

    ```code
    service cloudera-scm-server start
    ```