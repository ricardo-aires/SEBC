# Challenge 3 - Install CDH

## Final State

1. Output for the `hdfs dfs -ls /user` command

    ```code
    $ hdfs dfs -ls /user
    Found 8 items
    drwxr-xr-x   - hdfs          supergroup             0 2017-03-10 09:24 /user/hdfs
    drwxrwxrwx   - mapred        hadoop                 0 2017-03-10 09:13 /user/history
    drwxrwxr-t   - hive          hive                   0 2017-03-10 09:14 /user/hive
    drwxrwxr-x   - hue           hue                    0 2017-03-10 09:14 /user/hue
    drwxr-xr-x   - neymar        haddop                 0 2017-03-10 09:21 /user/neymar
    drwxrwxr-x   - oozie         oozie                  0 2017-03-10 09:15 /user/oozie
    drwxr-xr-x   - ricardo-aires ricardo-aires          0 2017-03-10 09:24 /user/ricardo-aires
    drwxr-xr-x   - ronaldo       haddop                 0 2017-03-10 09:21 /user/ronaldo
    ```

1. Output from the CM API call `../api/v14/hosts`

    ```code
    $ curl -u 'admin' -s -X GET "http://ip-172-31-17-22.eu-west-1.compute.internal:7180/api/v14/hosts" |  python -m json.tool
    Enter host password for user 'admin':
    {
        "items": [
            {
                "commissionState": "COMMISSIONED", 
                "hostId": "i-092b3a6f27a7de854", 
                "hostUrl": "http://ip-172-31-17-22.eu-west-1.compute.internal:7180/cmf/hostRedirect/i-092b3a6f27a7de854", 
                "hostname": "ip-172-31-17-22.eu-west-1.compute.internal", 
                "ipAddress": "172.31.17.22", 
                "maintenanceMode": false, 
                "maintenanceOwners": [], 
                "numCores": 4, 
                "numPhysicalCores": 4, 
                "rackId": "/default", 
                "totalPhysMemBytes": 15604756480
            }, 
            {
                "commissionState": "COMMISSIONED", 
                "hostId": "i-0fe489872c8cd7f8f", 
                "hostUrl": "http://ip-172-31-17-22.eu-west-1.compute.internal:7180/cmf/hostRedirect/i-0fe489872c8cd7f8f", 
                "hostname": "ip-172-31-20-215.eu-west-1.compute.internal", 
                "ipAddress": "172.31.20.215", 
                "maintenanceMode": false, 
                "maintenanceOwners": [], 
                "numCores": 4, 
                "numPhysicalCores": 4, 
                "rackId": "/default", 
                "totalPhysMemBytes": 15604756480
            }, 
            {
                "commissionState": "COMMISSIONED", 
                "hostId": "i-0a29a7476a6fc0ccf", 
                "hostUrl": "http://ip-172-31-17-22.eu-west-1.compute.internal:7180/cmf/hostRedirect/i-0a29a7476a6fc0ccf", 
                "hostname": "ip-172-31-26-76.eu-west-1.compute.internal", 
                "ipAddress": "172.31.26.76", 
                "maintenanceMode": false, 
                "maintenanceOwners": [], 
                "numCores": 4, 
                "numPhysicalCores": 4, 
                "rackId": "/default", 
                "totalPhysMemBytes": 15604756480
            }, 
            {
                "commissionState": "COMMISSIONED", 
                "hostId": "i-0ad8d0060b68ed90c", 
                "hostUrl": "http://ip-172-31-17-22.eu-west-1.compute.internal:7180/cmf/hostRedirect/i-0ad8d0060b68ed90c", 
                "hostname": "ip-172-31-29-163.eu-west-1.compute.internal", 
                "ipAddress": "172.31.29.163", 
                "maintenanceMode": false, 
                "maintenanceOwners": [], 
                "numCores": 4, 
                "numPhysicalCores": 4, 
                "rackId": "/default", 
                "totalPhysMemBytes": 15604756480
            }, 
            {
                "commissionState": "COMMISSIONED", 
                "hostId": "i-07da800981f59b954", 
                "hostUrl": "http://ip-172-31-17-22.eu-west-1.compute.internal:7180/cmf/hostRedirect/i-07da800981f59b954", 
                "hostname": "ip-172-31-30-160.eu-west-1.compute.internal", 
                "ipAddress": "172.31.30.160", 
                "maintenanceMode": false, 
                "maintenanceOwners": [], 
                "numCores": 4, 
                "numPhysicalCores": 4, 
                "rackId": "/default", 
                "totalPhysMemBytes": 15604756480
            }
        ]
    }
    ```

1. Screenshot of the Hue home that lists the Hive tables in [challenges/labs/3_hue_hive.png](3_hue_hive.png)

    ![Hue home page](3_hue_installed.png)

## Setup Steps

1. Install the latest CDH release, deploy Coreset services only.

1. Rename the cluster to `ricardo-aires`, my GitHub handle

1. Create user directories in HDFS for `neymar` and `ronaldo`

    ```code
    hdfs dfs -mkdir /user/neymar
    hdfs dfs -chown neymar:hadoop /user/neymar
    hdfs dfs -mkdir /user/ronaldo
    hdfs dfs -chown ronaldo:hadoop /user/ronaldo
    ```

1. Login to Hue and install the Hive sample data