# Challenge Setup

## Initial Setup

- AWS Instances

| Public IP      | Public FQDN                                        | Private IP    | Private FQDN                                |
| :------------- | :------------------------------------------------- | :------------ |:------------------------------------------- |
| 34.249.225.242 | ec2-34-249-225-242.eu-west-1.compute.amazonaws.com | 172.31.30.160 | ip-172-31-30-160.eu-west-1.compute.internal |
| 34.251.180.66  | ec2-34-251-180-66.eu-west-1.compute.amazonaws.com  | 172.31.17.22  | ip-172-31-17-22.eu-west-1.compute.internal  |
| 34.249.83.31   | ec2-34-249-83-31.eu-west-1.compute.amazonaws.com   | 172.31.26.76  | ip-172-31-26-76.eu-west-1.compute.internal  |
| 34.251.61.150  | ec2-34-251-61-150.eu-west-1.compute.amazonaws.com  | 172.31.29.163 | ip-172-31-29-163.eu-west-1.compute.internal |
| 34.248.74.180  | ec2-34-248-74-180.eu-west-1.compute.amazonaws.com  | 172.31.20.215 | ip-172-31-20-215.eu-west-1.compute.internal |

- Linux release in use

```code
$ cat /etc/centos-release
CentOS release 6.8 (Final)
```

- Disk space on each node (at least 30 GB)

```code
[root@ip-172-31-30-160 ~]# df -haT
Filesystem     Type         Size  Used Avail Use% Mounted on
/dev/xvde      ext4          79G  777M   74G   2% /
proc           proc            0     0     0    - /proc
sysfs          sysfs           0     0     0    - /sys
devpts         devpts          0     0     0    - /dev/pts
tmpfs          tmpfs        7.3G     0  7.3G   0% /dev/shm
none           binfmt_misc     0     0     0    - /proc/sys/fs/binfmt_misc
[root@ip-172-31-30-160 ~]#
```

```code
[root@ip-172-31-17-22 ~]# df -haT
Filesystem     Type         Size  Used Avail Use% Mounted on
/dev/xvde      ext4          79G  777M   74G   2% /
proc           proc            0     0     0    - /proc
sysfs          sysfs           0     0     0    - /sys
devpts         devpts          0     0     0    - /dev/pts
tmpfs          tmpfs        7.3G     0  7.3G   0% /dev/shm
none           binfmt_misc     0     0     0    - /proc/sys/fs/binfmt_misc
[root@ip-172-31-17-22 ~]#
```

```code
[root@ip-172-31-26-76 ~]# df -haT
Filesystem     Type         Size  Used Avail Use% Mounted on
/dev/xvde      ext4          79G  777M   74G   2% /
proc           proc            0     0     0    - /proc
sysfs          sysfs           0     0     0    - /sys
devpts         devpts          0     0     0    - /dev/pts
tmpfs          tmpfs        7.3G     0  7.3G   0% /dev/shm
none           binfmt_misc     0     0     0    - /proc/sys/fs/binfmt_misc
[root@ip-172-31-26-76 ~]#
```

```code
[root@ip-172-31-29-163 ~]# df -haT
Filesystem     Type         Size  Used Avail Use% Mounted on
/dev/xvde      ext4          79G  777M   74G   2% /
proc           proc            0     0     0    - /proc
sysfs          sysfs           0     0     0    - /sys
devpts         devpts          0     0     0    - /dev/pts
tmpfs          tmpfs        7.3G     0  7.3G   0% /dev/shm
none           binfmt_misc     0     0     0    - /proc/sys/fs/binfmt_misc
[root@ip-172-31-29-163 ~]#
```

```code
[root@ip-172-31-20-215 ~]# df -haT
Filesystem     Type         Size  Used Avail Use% Mounted on
/dev/xvde      ext4          79G  777M   74G   2% /
proc           proc            0     0     0    - /proc
sysfs          sysfs           0     0     0    - /sys
devpts         devpts          0     0     0    - /dev/pts
tmpfs          tmpfs        7.3G     0  7.3G   0% /dev/shm
none           binfmt_misc     0     0     0    - /proc/sys/fs/binfmt_misc
[root@ip-172-31-20-215 ~]#
```

- Output of `yum repolist enabled` command

```code
[root@ip-172-31-30-160 ~]# yum repolist enabled
Loaded plugins: fastestmirror, presto
Loading mirror speeds from cached hostfile
 * base: ftp.heanet.ie
 * extras: ftp.heanet.ie
 * updates: ftp.heanet.ie
repo id                                                                                          repo name                                                                                                    status
base                                                                                             CentOS-6 - Base                                                                                              6,696
extras                                                                                           CentOS-6 - Extras                                                                                               64
updates                                                                                          CentOS-6 - Updates                                                                                             959
repolist: 7,719
[root@ip-172-31-30-160 ~]#
```

## Users/Groups creation

1. Add user `neymar` with a UID of `2010` account to all nodes

    ```code
    useradd -u 2010 neymar
    ```

1. Add user `ronaldo` with a UID of `2016` account to all nodes

    ```code
    useradd -u 2016 ronaldo
    ```

1. Create the group `barca` and add `ronaldo` to it

    ```code
    groupadd barca
    usermod -a -G barca ronaldo
    ```

1. Create the group `merengues` and add `neymar` to it

    ```code
    groupadd merengues
    usermod -a -G merengues neymar
    ```

1. Entries for `neymar` and `ronaldo` in the `/etc/passwd` file

    ```code
    $ egrep "neymar|ronaldo" /etc/passwd
    neymar:x:2010:2010::/home/neymar:/bin/bash
    ronaldo:x:2016:2016::/home/ronaldo:/bin/bash
    ```

1. Entries for `merengues` and `barca` in the `/etc/group` file

    ```code
    egrep "merengues|barca" /etc/group
    barca:x:2017:ronaldo
    merengues:x:2018:neymar
    ```