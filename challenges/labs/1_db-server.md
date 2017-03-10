# Challenge 1: Install a MySQL server

## Final State

- Hostname of MySQL node

    ```code
    [root@ip-172-31-30-160 ~]# hostname -f
    ip-172-31-30-160.eu-west-1.compute.internal
    [root@ip-172-31-30-160 ~]#
    ```

- MySQL Version

    ```code
    $ mysql --version
    mysql  Ver 14.14 Distrib 5.6.35, for Linux (x86_64) using  EditLine wrapper
    ```

- List of MySQL databases:

    ```code
    $ mysql -u root -p -e "show databases;"
    Enter password: 
    +--------------------+
    | Database           |
    +--------------------+
    | information_schema |
    | hive               |
    | hue                |
    | mysql              |
    | oozie              |
    | performance_schema |
    | rman               |
    | scm                |
    | sentry             |
    +--------------------+
    ```

- Copy of `/etc/yum.repos.d/mysql-community.repo` in [challenges/labs/1_my-database-server.repo.md](1_my-database-server.repo.md).

## Setup Steps

1. Download and implement the official MySQL repo on all nodes

    ```code
    wget https://dev.mysql.com/get/mysql57-community-release-el6-9.noarch.rpm
    rpm -ivh mysql57-community-release-el6-9.noarch.rpm
    ```

1. Enable the repo to install MySQL 5.6 and disable other versions on `/etc/yum.repos.d/mysql-community.repo` in all nodes.

1. Install the `mysql` package on all nodes

    ```code
    yum install -y mysql
    ```

1. Install `mysql-server` on the MySQL Server node

    ```code
    yum install -y mysql-server
    ```

1. Download and copy the JDBC connector to all nodes

    ```code
    wget http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.40.tar.gz
    tar xzvf mysql-connector-java-5.1.40.tar.gz
    mkdir /usr/share/java
    mv ./mysql-connector-java-5.1.40/mysql-connector-java-5.1.40-bin.jar /usr/share/java/mysql-connector-java.jar
    echo "PATH=/usr/share/java/:\$PATH" >> ~/.bashrc
    . ~/.bashrc
    ```

1. Start the `mysqld` service on the MySQL Server node

    ```code
    service mysqld start
    ```

1. Use `/usr/bin/mysql_secure_installation` to:

    - Set password protection for the server

    - Revoke permissions for anonymous users

    - Permit remote privileged login

    - Remove test databases

    - Refresh privileges in memory

1. Create the following databases

    - `scm`
    - `rman`
    - `hive`
    - `oozie`
    - `hue`
    - `sentry`

    ```code
    $cat schema.sql
CREATE DATABASE scm DEFAULT CHARACTER SET utf8;
CREATE DATABASE rman DEFAULT CHARACTER SET utf8;
CREATE DATABASE hive DEFAULT CHARACTER SET utf8;
CREATE DATABASE oozie DEFAULT CHARACTER SET utf8;
CREATE DATABASE hue DEFAULT CHARACTER SET utf8;
CREATE DATABASE sentry DEFAULT CHARACTER SET utf8;
CREATE USER 'scm'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'rman'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'hive'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'oozie'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'hue'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'sentry'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON scm.* TO 'scm'@'%' IDENTIFIED BY 'password';
GRANT ALL ON rman.* TO 'rman'@'%' IDENTIFIED BY 'password';
GRANT ALL ON hive.* TO 'hive'@'%' IDENTIFIED BY 'password';
GRANT ALL ON oozie.* TO 'oozie'@'%' IDENTIFIED BY 'password';
GRANT ALL ON hue.* TO 'hue'@'%' IDENTIFIED BY 'password';
GRANT ALL ON sentry.* TO 'sentry'@'%' IDENTIFIED BY 'password';
    $ mysql -u root -p < schema.sql
    ```