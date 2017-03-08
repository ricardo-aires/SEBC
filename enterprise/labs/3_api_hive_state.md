# Use the API

Write `curl` statements that and show the output:

1. Stop the Hive Service

    ```code
    $ curl -u 'ricardo-aires' -X POST "http://34.248.203.134:7180/api/v12/clusters/ricardo-aires/services/hive/commands/stop" |  python -m json.tool
    Enter host password for user 'ricardo-aires':
      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                     Dload  Upload   Total   Spent    Left  Speed
    180   180    0   180    0     0   1719      0 --:--:-- --:--:-- --:--:--  1730
    {
        "active": true, 
        "id": 390, 
        "name": "Stop", 
        "serviceRef": {
            "clusterName": "cluster", 
            "serviceName": "hive"
        }, 
        "startTime": "2017-03-08T09:10:28.022Z"
    }
    ```

1. Check the Status of Hive Service

    ```code
    $ curl -u 'ricardo-aires' -X GET "http://34.248.203.134:7180/api/v12/clusters/ricardo-aires/services/hive" |  python -m json.tool
    Enter host password for user 'ricardo-aires':
      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                     Dload  Upload   Total   Spent    Left  Speed
    113   793    0   793    0     0  22247      0 --:--:-- --:--:-- --:--:-- 22657
    {
        "clientConfigStalenessStatus": "FRESH", 
        "clusterRef": {
            "clusterName": "cluster"
        }, 
        "configStalenessStatus": "FRESH", 
        "displayName": "Hive", 
        "entityStatus": "STOPPED", 
        "healthChecks": [
            {
                "name": "HIVE_HIVEMETASTORES_HEALTHY", 
                "summary": "DISABLED", 
                "suppressed": false
            }, 
            {
                "name": "HIVE_HIVESERVER2S_HEALTHY", 
                "summary": "DISABLED", 
                "suppressed": false
            }
        ], 
        "healthSummary": "DISABLED", 
        "maintenanceMode": false, 
        "maintenanceOwners": [], 
        "name": "hive", 
        "roleInstancesUrl": "http://ip-172-31-29-2.eu-west-1.compute.internal:7180/cmf/serviceRedirect/hive/instances", 
        "serviceState": "STOPPED", 
        "serviceUrl": "http://ip-172-31-29-2.eu-west-1.compute.internal:7180/cmf/serviceRedirect/hive", 
        "type": "HIVE"
    }
    ```


1. Start the Hive Service

    ```code
    $ curl -u 'ricardo-aires' -X POST "http://34.248.203.134:7180/api/v12/clusters/ricardo-aires/services/hive/commands/start" |  python -m json.tool
    Enter host password for user 'ricardo-aires':
      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                     Dload  Upload   Total   Spent    Left  Speed
    181   181    0   181    0     0    649      0 --:--:-- --:--:-- --:--:--   651
    {
        "active": true, 
        "id": 394, 
        "name": "Start", 
        "serviceRef": {
            "clusterName": "cluster", 
            "serviceName": "hive"
        }, 
        "startTime": "2017-03-08T09:13:11.409Z"
    }
   ```