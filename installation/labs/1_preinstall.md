# System Configuration Checks

1. Check vm.swappiness on all your nodes. Set the value to 1 if necessary.

    ```code
    $ sysctl vm.swappiness
    vm.swappiness = 1
    $ grep swappiness /etc/sysctl.conf 
    vm.swappiness = 1 
    $
    ```

1. Show the mount attributes of all volumes

    ```code
    $ cat /etc/fstab 
    LABEL=centos_root		/        ext4      defaults         0 0
    devpts     /dev/pts  devpts  gid=5,mode=620   0 0
    tmpfs      /dev/shm  tmpfs   defaults         0 0
    proc       /proc     proc    defaults         0 0
    sysfs      /sys      sysfs   defaults         0 0
    $ mount -l
    /dev/xvde on / type ext4 (rw) [centos_root]
    proc on /proc type proc (rw)
    sysfs on /sys type sysfs (rw)
    devpts on /dev/pts type devpts (rw,gid=5,mode=620)
    tmpfs on /dev/shm type tmpfs (rw)
    none on /proc/sys/fs/binfmt_misc type binfmt_misc (rw)
    $ 
    ```

1. Show the reserve space of any non-root, ext-based volumes. XFS volumes do not maintain reserve space.

    ```code
    $ df -haT
    Filesystem     Type         Size  Used Avail Use% Mounted on
    /dev/xvde      ext4          79G  783M   74G   2% /
    proc           proc            0     0     0    - /proc
    sysfs          sysfs           0     0     0    - /sys
    devpts         devpts          0     0     0    - /dev/pts
    tmpfs          tmpfs        7.3G     0  7.3G   0% /dev/shm
    none           binfmt_misc     0     0     0    - /proc/sys/fs/binfmt_misc
    $ 
    ```

1. Disable transparent hugepage support.

    ```code
    $ grep kernel /boot/grub/grub.conf 
            kernel /boot/vmlinuz-2.6.32-642.15.1.el6.x86_64 root=LABEL=centos_root ro crashkernel=auto LANG=en_US.UTF-8 KEYTABLE=us transparent_hugepage=never
            kernel /boot/vmlinuz-2.6.32-431.el6.x86_64 root=LABEL=centos_root ro transparent_hugepage=never
    $ 
    ```

1. List your network interface configuration

    ```code
    $ ifconfig
    eth0      Link encap:Ethernet  HWaddr 06:21:F6:AE:A7:53  
            inet addr:172.31.29.2  Bcast:172.31.31.255  Mask:255.255.240.0
            inet6 addr: fe80::421:f6ff:feae:a753/64 Scope:Link
            UP BROADCAST RUNNING MULTICAST  MTU:9001  Metric:1
            RX packets:23688 errors:0 dropped:0 overruns:0 frame:0
            TX packets:26802 errors:0 dropped:0 overruns:0 carrier:0
            collisions:0 txqueuelen:1000 
            RX bytes:2990660 (2.8 MiB)  TX bytes:4706352 (4.4 MiB)
            Interrupt:24 

    lo        Link encap:Local Loopback  
            inet addr:127.0.0.1  Mask:255.0.0.0
            inet6 addr: ::1/128 Scope:Host
            UP LOOPBACK RUNNING  MTU:65536  Metric:1
            RX packets:0 errors:0 dropped:0 overruns:0 frame:0
            TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
            collisions:0 txqueuelen:0 
            RX bytes:0 (0.0 b)  TX bytes:0 (0.0 b)

    $ 
    ```

1. List forward and reverse host lookups using getent or nslookup

    ```code
    $ ping -c 5 ip-172-31-24-221.eu-west-1.compute.internal
    PING ip-172-31-24-221.eu-west-1.compute.internal (172.31.24.221) 56(84) bytes of data.
    64 bytes from ip-172-31-24-221.eu-west-1.compute.internal (172.31.24.221): icmp_seq=1 ttl=64 time=2.61 ms
    64 bytes from ip-172-31-24-221.eu-west-1.compute.internal (172.31.24.221): icmp_seq=2 ttl=64 time=0.407 ms
    64 bytes from ip-172-31-24-221.eu-west-1.compute.internal (172.31.24.221): icmp_seq=3 ttl=64 time=0.442 ms
    64 bytes from ip-172-31-24-221.eu-west-1.compute.internal (172.31.24.221): icmp_seq=4 ttl=64 time=0.308 ms
    64 bytes from ip-172-31-24-221.eu-west-1.compute.internal (172.31.24.221): icmp_seq=5 ttl=64 time=0.335 ms

    --- ip-172-31-24-221.eu-west-1.compute.internal ping statistics ---
    5 packets transmitted, 5 received, 0% packet loss, time 4002ms
    rtt min/avg/max/mdev = 0.308/0.821/2.614/0.897 ms
    $ nslookup 172.31.16.248
    Server:		172.31.0.2
    Address:	172.31.0.2#53

    Non-authoritative answer:
    248.16.31.172.in-addr.arpa	name = ip-172-31-16-248.eu-west-1.compute.internal.

    Authoritative answers can be found from:

    $ getent hosts
    127.0.0.1       localhost.localdomain localhost
    127.0.0.1       localhost6.localdomain6 localhost6
    172.31.29.2     ip-172-31-29-2.eu-west-1.compute.internal
    172.31.16.248   ip-172-31-16-248.eu-west-1.compute.internal
    172.31.20.168   ip-172-31-20-168.eu-west-1.compute.internal
    172.31.24.221   ip-172-31-24-221.eu-west-1.compute.internal
    172.31.24.77    ip-172-31-24-77.eu-west-1.compute.internal
    $ 
    ```

1. Show the nscd service is running

    ```code
    $ chkconfig --list nscd
    nscd           	0:off	1:off	2:on	3:on	4:on	5:on	6:off
    $ service nscd status
    nscd (pid 927) is running...
    $ 
    ```

1. Show the ntpd service is running

    ```code
    $ chkconfig --list ntpd
    ntpd           	0:off	1:off	2:on	3:on	4:on	5:on	6:off
    $ service ntpd status
    ntpd (pid  965) is running...
    $ 
    ```