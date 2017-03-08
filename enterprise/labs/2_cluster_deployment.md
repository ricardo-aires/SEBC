# Use the API

Browse or use `curl` on the endpoint `./api/v2/cm/deployment`.

```json
$ curl -u 'ricardo-aires' -X GET "http://34.248.203.134:7180/api/v2/cm/deployment" |  python -m json.tool
Enter host password for user 'ricardo-aires':
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 27695    0 27695    0     0   451k      0 --:--:-- --:--:-- --:--:--  458k
{
    "clusters": [
        {
            "name": "ricardo-aires", 
            "services": [
                {
                    "config": {
                        "items": [
                            {
                                "name": "hive_metastore_database_host", 
                                "value": "ip-172-31-29-2.eu-west-1.compute.internal"
                            }, 
                            {
                                "name": "hive_metastore_database_password", 
                                "value": "password"
                            }, 
                            {
                                "name": "mapreduce_yarn_service", 
                                "value": "yarn"
                            }, 
                            {
                                "name": "zookeeper_service", 
                                "value": "zookeeper"
                            }
                        ], 
                        "roleTypeConfigs": [
                            {
                                "items": [
                                    {
                                        "name": "hive_metastore_java_heapsize", 
                                        "value": "651165696"
                                    }
                                ], 
                                "roleType": "HIVEMETASTORE"
                            }, 
                            {
                                "items": [
                                    {
                                        "name": "hiveserver2_java_heapsize", 
                                        "value": "651165696"
                                    }, 
                                    {
                                        "name": "hiveserver2_spark_driver_memory", 
                                        "value": "966367641"
                                    }, 
                                    {
                                        "name": "hiveserver2_spark_executor_cores", 
                                        "value": "4"
                                    }, 
                                    {
                                        "name": "hiveserver2_spark_executor_memory", 
                                        "value": "3525050368"
                                    }, 
                                    {
                                        "name": "hiveserver2_spark_yarn_driver_memory_overhead", 
                                        "value": "102"
                                    }, 
                                    {
                                        "name": "hiveserver2_spark_yarn_executor_memory_overhead", 
                                        "value": "593"
                                    }
                                ], 
                                "roleType": "HIVESERVER2"
                            }
                        ]
                    }, 
                    "displayName": "Hive", 
                    "name": "hive", 
                    "roles": [
                        {
                            "config": {
                                "items": []
                            }, 
                            "hostRef": {
                                "hostId": "411bce51-ab81-4d27-8f8f-ab3fb4d5158f"
                            }, 
                            "name": "hive-GATEWAY-03589d0155b0445574700c5d7cfd7748", 
                            "type": "GATEWAY"
                        }, 
                        {
                            "config": {
                                "items": []
                            }, 
                            "hostRef": {
                                "hostId": "c49fcb7d-47bb-4a40-963e-34fd0eb1628b"
                            }, 
                            "name": "hive-GATEWAY-297ab4b28f52fcd1fd4576d6ff1d0e05", 
                            "type": "GATEWAY"
                        }, 
                        {
                            "config": {
                                "items": []
                            }, 
                            "hostRef": {
                                "hostId": "50258542-9d95-4c08-ae2a-129fd5bc8f7d"
                            }, 
                            "name": "hive-GATEWAY-3d1d21b17fa547a7226c2a8a4660e2f7", 
                            "type": "GATEWAY"
                        }, 
                        {
                            "config": {
                                "items": []
                            }, 
                            "hostRef": {
                                "hostId": "156e4c0d-fb0a-43e6-a509-ba0b489686ea"
                            }, 
                            "name": "hive-GATEWAY-abdf582e76e3e7f7b1ed2ea3781d20d1", 
                            "type": "GATEWAY"
                        }, 
                        {
                            "config": {
                                "items": []
                            }, 
                            "hostRef": {
                                "hostId": "3cf63d3c-1a48-4cbb-a844-93f0529be9e9"
                            }, 
                            "name": "hive-GATEWAY-c858063cffdcde7ef3fdce09342bdc65", 
                            "type": "GATEWAY"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "a9hjnip2v8yzvcci8938zumb2"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "3cf63d3c-1a48-4cbb-a844-93f0529be9e9"
                            }, 
                            "name": "hive-HIVEMETASTORE-c858063cffdcde7ef3fdce09342bdc65", 
                            "type": "HIVEMETASTORE"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "7i77h36dlq2b19c9rvixcrc1m"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "3cf63d3c-1a48-4cbb-a844-93f0529be9e9"
                            }, 
                            "name": "hive-HIVESERVER2-c858063cffdcde7ef3fdce09342bdc65", 
                            "type": "HIVESERVER2"
                        }
                    ], 
                    "type": "HIVE"
                }, 
                {
                    "config": {
                        "items": [], 
                        "roleTypeConfigs": []
                    }, 
                    "displayName": "ZooKeeper", 
                    "name": "zookeeper", 
                    "roles": [
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "asux1o654kj4drae2fovzq592"
                                    }, 
                                    {
                                        "name": "serverId", 
                                        "value": "2"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "c49fcb7d-47bb-4a40-963e-34fd0eb1628b"
                            }, 
                            "name": "zookeeper-SERVER-297ab4b28f52fcd1fd4576d6ff1d0e05", 
                            "type": "SERVER"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "8p4xiiyy4wedyzv3ier6yzuxm"
                                    }, 
                                    {
                                        "name": "serverId", 
                                        "value": "1"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "50258542-9d95-4c08-ae2a-129fd5bc8f7d"
                            }, 
                            "name": "zookeeper-SERVER-3d1d21b17fa547a7226c2a8a4660e2f7", 
                            "type": "SERVER"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "2xsyq9wr4jtq2amhvehv6vy17"
                                    }, 
                                    {
                                        "name": "serverId", 
                                        "value": "3"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "156e4c0d-fb0a-43e6-a509-ba0b489686ea"
                            }, 
                            "name": "zookeeper-SERVER-abdf582e76e3e7f7b1ed2ea3781d20d1", 
                            "type": "SERVER"
                        }
                    ], 
                    "type": "ZOOKEEPER"
                }, 
                {
                    "config": {
                        "items": [
                            {
                                "name": "database_host", 
                                "value": "ip-172-31-29-2.eu-west-1.compute.internal"
                            }, 
                            {
                                "name": "database_password", 
                                "value": "password"
                            }, 
                            {
                                "name": "database_type", 
                                "value": "mysql"
                            }, 
                            {
                                "name": "hive_service", 
                                "value": "hive"
                            }, 
                            {
                                "name": "hue_webhdfs", 
                                "value": "hdfs-HTTPFS-03589d0155b0445574700c5d7cfd7748"
                            }, 
                            {
                                "name": "oozie_service", 
                                "value": "oozie"
                            }, 
                            {
                                "name": "zookeeper_service", 
                                "value": "zookeeper"
                            }
                        ], 
                        "roleTypeConfigs": []
                    }, 
                    "displayName": "Hue", 
                    "name": "hue", 
                    "roles": [
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "8es3168mpy5bsfwkrwc56uan4"
                                    }, 
                                    {
                                        "name": "secret_key", 
                                        "value": "TENPQmz87nhFkgasE9cOwK2NNdOiww"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "3cf63d3c-1a48-4cbb-a844-93f0529be9e9"
                            }, 
                            "name": "hue-HUE_SERVER-c858063cffdcde7ef3fdce09342bdc65", 
                            "type": "HUE_SERVER"
                        }
                    ], 
                    "type": "HUE"
                }, 
                {
                    "config": {
                        "items": [
                            {
                                "name": "hive_service", 
                                "value": "hive"
                            }, 
                            {
                                "name": "mapreduce_yarn_service", 
                                "value": "yarn"
                            }, 
                            {
                                "name": "zookeeper_service", 
                                "value": "zookeeper"
                            }
                        ], 
                        "roleTypeConfigs": [
                            {
                                "items": [
                                    {
                                        "name": "oozie_database_host", 
                                        "value": "ip-172-31-29-2.eu-west-1.compute.internal"
                                    }, 
                                    {
                                        "name": "oozie_database_password", 
                                        "value": "password"
                                    }, 
                                    {
                                        "name": "oozie_database_type", 
                                        "value": "mysql"
                                    }, 
                                    {
                                        "name": "oozie_database_user", 
                                        "value": "oozie"
                                    }, 
                                    {
                                        "name": "oozie_java_heapsize", 
                                        "value": "651165696"
                                    }
                                ], 
                                "roleType": "OOZIE_SERVER"
                            }
                        ]
                    }, 
                    "displayName": "Oozie", 
                    "name": "oozie", 
                    "roles": [
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "2shkwrjnim3zjq4akkjqdycme"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "3cf63d3c-1a48-4cbb-a844-93f0529be9e9"
                            }, 
                            "name": "oozie-OOZIE_SERVER-c858063cffdcde7ef3fdce09342bdc65", 
                            "type": "OOZIE_SERVER"
                        }
                    ], 
                    "type": "OOZIE"
                }, 
                {
                    "config": {
                        "items": [
                            {
                                "name": "hdfs_service", 
                                "value": "hdfs"
                            }, 
                            {
                                "name": "rm_dirty", 
                                "value": "false"
                            }, 
                            {
                                "name": "rm_last_allocation_percentage", 
                                "value": "90"
                            }, 
                            {
                                "name": "yarn_service_cgroups", 
                                "value": "false"
                            }, 
                            {
                                "name": "yarn_service_lce_always", 
                                "value": "false"
                            }, 
                            {
                                "name": "zk_authorization_secret_key", 
                                "value": "KoZeN8C9yXy8ICBcfIwlxjoWwtylFH"
                            }, 
                            {
                                "name": "zookeeper_service", 
                                "value": "zookeeper"
                            }
                        ], 
                        "roleTypeConfigs": [
                            {
                                "items": [
                                    {
                                        "name": "mapred_reduce_tasks", 
                                        "value": "8"
                                    }, 
                                    {
                                        "name": "mapred_submit_replication", 
                                        "value": "2"
                                    }
                                ], 
                                "roleType": "GATEWAY"
                            }, 
                            {
                                "items": [
                                    {
                                        "name": "mr2_jobhistory_java_heapsize", 
                                        "value": "651165696"
                                    }
                                ], 
                                "roleType": "JOBHISTORY"
                            }, 
                            {
                                "items": [
                                    {
                                        "name": "rm_cpu_shares", 
                                        "value": "1800"
                                    }, 
                                    {
                                        "name": "rm_io_weight", 
                                        "value": "900"
                                    }, 
                                    {
                                        "name": "yarn_nodemanager_heartbeat_interval_ms", 
                                        "value": "100"
                                    }, 
                                    {
                                        "name": "yarn_nodemanager_local_dirs", 
                                        "value": "/yarn/nm"
                                    }, 
                                    {
                                        "name": "yarn_nodemanager_log_dirs", 
                                        "value": "/yarn/container-logs"
                                    }, 
                                    {
                                        "name": "yarn_nodemanager_resource_cpu_vcores", 
                                        "value": "3"
                                    }, 
                                    {
                                        "name": "yarn_nodemanager_resource_memory_mb", 
                                        "value": "3150"
                                    }
                                ], 
                                "roleType": "NODEMANAGER"
                            }, 
                            {
                                "items": [
                                    {
                                        "name": "resource_manager_java_heapsize", 
                                        "value": "651165696"
                                    }, 
                                    {
                                        "name": "yarn_scheduler_maximum_allocation_mb", 
                                        "value": "3674"
                                    }, 
                                    {
                                        "name": "yarn_scheduler_maximum_allocation_vcores", 
                                        "value": "3"
                                    }
                                ], 
                                "roleType": "RESOURCEMANAGER"
                            }
                        ]
                    }, 
                    "displayName": "YARN (MR2 Included)", 
                    "name": "yarn", 
                    "roles": [
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "oxwghf8aw58hi3632d9j5zov"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "3cf63d3c-1a48-4cbb-a844-93f0529be9e9"
                            }, 
                            "name": "yarn-JOBHISTORY-c858063cffdcde7ef3fdce09342bdc65", 
                            "type": "JOBHISTORY"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "8st78joaxbbo3xyrlsyxyrdi5"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "411bce51-ab81-4d27-8f8f-ab3fb4d5158f"
                            }, 
                            "name": "yarn-NODEMANAGER-03589d0155b0445574700c5d7cfd7748", 
                            "type": "NODEMANAGER"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "107fs71xf7adri3txv4ialswp"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "c49fcb7d-47bb-4a40-963e-34fd0eb1628b"
                            }, 
                            "name": "yarn-NODEMANAGER-297ab4b28f52fcd1fd4576d6ff1d0e05", 
                            "type": "NODEMANAGER"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "754uknyo68kc6dteju3roz6uy"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "50258542-9d95-4c08-ae2a-129fd5bc8f7d"
                            }, 
                            "name": "yarn-NODEMANAGER-3d1d21b17fa547a7226c2a8a4660e2f7", 
                            "type": "NODEMANAGER"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "eursq85bper86s4e0olnm2r5l"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "156e4c0d-fb0a-43e6-a509-ba0b489686ea"
                            }, 
                            "name": "yarn-NODEMANAGER-abdf582e76e3e7f7b1ed2ea3781d20d1", 
                            "type": "NODEMANAGER"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "rm_id", 
                                        "value": "53"
                                    }, 
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "898csdvhj2nzsn18e58y65t0q"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "3cf63d3c-1a48-4cbb-a844-93f0529be9e9"
                            }, 
                            "name": "yarn-RESOURCEMANAGER-c858063cffdcde7ef3fdce09342bdc65", 
                            "type": "RESOURCEMANAGER"
                        }
                    ], 
                    "type": "YARN"
                }, 
                {
                    "config": {
                        "items": [
                            {
                                "name": "dfs_ha_fencing_cloudera_manager_secret_key", 
                                "value": "BBmAXi9LNiCpurOSoN098k2jCLA2JA"
                            }, 
                            {
                                "name": "dfs_ha_fencing_methods", 
                                "value": "shell(true)"
                            }, 
                            {
                                "name": "fc_authorization_secret_key", 
                                "value": "fvaM3ZIvQArxVke61oYKUrE0DcX3Vk"
                            }, 
                            {
                                "name": "http_auth_signature_secret", 
                                "value": "t9eaMmfH025pqemQCLGAiUbTro2rEx"
                            }, 
                            {
                                "name": "rm_dirty", 
                                "value": "false"
                            }, 
                            {
                                "name": "rm_last_allocation_percentage", 
                                "value": "10"
                            }, 
                            {
                                "name": "zookeeper_service", 
                                "value": "zookeeper"
                            }
                        ], 
                        "roleTypeConfigs": [
                            {
                                "items": [
                                    {
                                        "name": "balancer_java_heapsize", 
                                        "value": "651165696"
                                    }
                                ], 
                                "roleType": "BALANCER"
                            }, 
                            {
                                "items": [
                                    {
                                        "name": "datanode_java_heapsize", 
                                        "value": "1073741824"
                                    }, 
                                    {
                                        "name": "dfs_data_dir_list", 
                                        "value": "/dfs/dn"
                                    }, 
                                    {
                                        "name": "dfs_datanode_du_reserved", 
                                        "value": "8441736396"
                                    }, 
                                    {
                                        "name": "dfs_datanode_max_locked_memory", 
                                        "value": "4294967296"
                                    }, 
                                    {
                                        "name": "rm_cpu_shares", 
                                        "value": "200"
                                    }, 
                                    {
                                        "name": "rm_io_weight", 
                                        "value": "100"
                                    }
                                ], 
                                "roleType": "DATANODE"
                            }, 
                            {
                                "items": [
                                    {
                                        "name": "dfs_client_use_trash", 
                                        "value": "true"
                                    }
                                ], 
                                "roleType": "GATEWAY"
                            }, 
                            {
                                "items": [
                                    {
                                        "name": "dfs_journalnode_edits_dir", 
                                        "value": "/dfs/jn"
                                    }
                                ], 
                                "roleType": "JOURNALNODE"
                            }, 
                            {
                                "items": [
                                    {
                                        "name": "dfs_name_dir_list", 
                                        "value": "/dfs/nn"
                                    }, 
                                    {
                                        "name": "dfs_namenode_servicerpc_address", 
                                        "value": "8022"
                                    }, 
                                    {
                                        "name": "namenode_java_heapsize", 
                                        "value": "651165696"
                                    }
                                ], 
                                "roleType": "NAMENODE"
                            }, 
                            {
                                "items": [
                                    {
                                        "name": "fs_checkpoint_dir_list", 
                                        "value": "/dfs/snn"
                                    }, 
                                    {
                                        "name": "secondary_namenode_java_heapsize", 
                                        "value": "651165696"
                                    }
                                ], 
                                "roleType": "SECONDARYNAMENODE"
                            }
                        ]
                    }, 
                    "displayName": "HDFS", 
                    "name": "hdfs", 
                    "roles": [
                        {
                            "config": {
                                "items": []
                            }, 
                            "hostRef": {
                                "hostId": "3cf63d3c-1a48-4cbb-a844-93f0529be9e9"
                            }, 
                            "name": "hdfs-BALANCER-c858063cffdcde7ef3fdce09342bdc65", 
                            "type": "BALANCER"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "8r4wmimuzd9xfuslm8zzkvo5g"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "411bce51-ab81-4d27-8f8f-ab3fb4d5158f"
                            }, 
                            "name": "hdfs-DATANODE-03589d0155b0445574700c5d7cfd7748", 
                            "type": "DATANODE"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "7uobjlfipy0ryvilunex3d2lf"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "c49fcb7d-47bb-4a40-963e-34fd0eb1628b"
                            }, 
                            "name": "hdfs-DATANODE-297ab4b28f52fcd1fd4576d6ff1d0e05", 
                            "type": "DATANODE"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "11g93rp0wdw00bpddtw616gx0"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "50258542-9d95-4c08-ae2a-129fd5bc8f7d"
                            }, 
                            "name": "hdfs-DATANODE-3d1d21b17fa547a7226c2a8a4660e2f7", 
                            "type": "DATANODE"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "78j0omkr34cr3upzjw4eottq3"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "156e4c0d-fb0a-43e6-a509-ba0b489686ea"
                            }, 
                            "name": "hdfs-DATANODE-abdf582e76e3e7f7b1ed2ea3781d20d1", 
                            "type": "DATANODE"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "11eujbv7e2n6oty03g31dgoz9"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "411bce51-ab81-4d27-8f8f-ab3fb4d5158f"
                            }, 
                            "name": "hdfs-FAILOVERCONTROLLER-03589d0155b0445574700c5d7cfd7748", 
                            "type": "FAILOVERCONTROLLER"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "1cqjksk01j9rmsmm78vezv69a"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "3cf63d3c-1a48-4cbb-a844-93f0529be9e9"
                            }, 
                            "name": "hdfs-FAILOVERCONTROLLER-c858063cffdcde7ef3fdce09342bdc65", 
                            "type": "FAILOVERCONTROLLER"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "1akpwsneysebzdhbufea6su1o"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "411bce51-ab81-4d27-8f8f-ab3fb4d5158f"
                            }, 
                            "name": "hdfs-HTTPFS-03589d0155b0445574700c5d7cfd7748", 
                            "type": "HTTPFS"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "ay64h3efr12zyr91lzies3vi1"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "c49fcb7d-47bb-4a40-963e-34fd0eb1628b"
                            }, 
                            "name": "hdfs-JOURNALNODE-297ab4b28f52fcd1fd4576d6ff1d0e05", 
                            "type": "JOURNALNODE"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "95e81o1nud9c24221h49jk9hk"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "50258542-9d95-4c08-ae2a-129fd5bc8f7d"
                            }, 
                            "name": "hdfs-JOURNALNODE-3d1d21b17fa547a7226c2a8a4660e2f7", 
                            "type": "JOURNALNODE"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "cyw47u8nzhu9uwcmokywy7l20"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "156e4c0d-fb0a-43e6-a509-ba0b489686ea"
                            }, 
                            "name": "hdfs-JOURNALNODE-abdf582e76e3e7f7b1ed2ea3781d20d1", 
                            "type": "JOURNALNODE"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "autofailover_enabled", 
                                        "value": "true"
                                    }, 
                                    {
                                        "name": "dfs_federation_namenode_nameservice", 
                                        "value": "nameservice1"
                                    }, 
                                    {
                                        "name": "dfs_namenode_quorum_journal_name", 
                                        "value": "nameservice1"
                                    }, 
                                    {
                                        "name": "namenode_id", 
                                        "value": "61"
                                    }, 
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "403koahvte7bbgotu0y4cjc5s"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "411bce51-ab81-4d27-8f8f-ab3fb4d5158f"
                            }, 
                            "name": "hdfs-NAMENODE-03589d0155b0445574700c5d7cfd7748", 
                            "type": "NAMENODE"
                        }, 
                        {
                            "config": {
                                "items": [
                                    {
                                        "name": "autofailover_enabled", 
                                        "value": "true"
                                    }, 
                                    {
                                        "name": "dfs_federation_namenode_nameservice", 
                                        "value": "nameservice1"
                                    }, 
                                    {
                                        "name": "dfs_namenode_quorum_journal_name", 
                                        "value": "nameservice1"
                                    }, 
                                    {
                                        "name": "namenode_id", 
                                        "value": "55"
                                    }, 
                                    {
                                        "name": "role_jceks_password", 
                                        "value": "3lc0ktjy2bsflvp0xmp06gedg"
                                    }
                                ]
                            }, 
                            "hostRef": {
                                "hostId": "3cf63d3c-1a48-4cbb-a844-93f0529be9e9"
                            }, 
                            "name": "hdfs-NAMENODE-c858063cffdcde7ef3fdce09342bdc65", 
                            "type": "NAMENODE"
                        }
                    ], 
                    "type": "HDFS"
                }
            ], 
            "version": "CDH5"
        }
    ], 
    "hosts": [
        {
            "config": {
                "items": []
            }, 
            "hostId": "3cf63d3c-1a48-4cbb-a844-93f0529be9e9", 
            "hostname": "ip-172-31-16-248.eu-west-1.compute.internal", 
            "ipAddress": "172.31.16.248", 
            "rackId": "/default"
        }, 
        {
            "config": {
                "items": []
            }, 
            "hostId": "411bce51-ab81-4d27-8f8f-ab3fb4d5158f", 
            "hostname": "ip-172-31-20-168.eu-west-1.compute.internal", 
            "ipAddress": "172.31.20.168", 
            "rackId": "/default"
        }, 
        {
            "config": {
                "items": []
            }, 
            "hostId": "156e4c0d-fb0a-43e6-a509-ba0b489686ea", 
            "hostname": "ip-172-31-24-221.eu-west-1.compute.internal", 
            "ipAddress": "172.31.24.221", 
            "rackId": "/default"
        }, 
        {
            "config": {
                "items": []
            }, 
            "hostId": "50258542-9d95-4c08-ae2a-129fd5bc8f7d", 
            "hostname": "ip-172-31-24-77.eu-west-1.compute.internal", 
            "ipAddress": "172.31.24.77", 
            "rackId": "/default"
        }, 
        {
            "config": {
                "items": []
            }, 
            "hostId": "c49fcb7d-47bb-4a40-963e-34fd0eb1628b", 
            "hostname": "ip-172-31-29-2.eu-west-1.compute.internal", 
            "ipAddress": "172.31.29.2", 
            "rackId": "/default"
        }
    ], 
    "managementService": {
        "config": {
            "items": [], 
            "roleTypeConfigs": [
                {
                    "items": [
                        {
                            "name": "event_server_heapsize", 
                            "value": "651165696"
                        }
                    ], 
                    "roleType": "EVENTSERVER"
                }, 
                {
                    "items": [
                        {
                            "name": "firehose_heapsize", 
                            "value": "651165696"
                        }, 
                        {
                            "name": "firehose_non_java_memory_bytes", 
                            "value": "847249408"
                        }
                    ], 
                    "roleType": "HOSTMONITOR"
                }, 
                {
                    "items": [
                        {
                            "name": "headlamp_database_host", 
                            "value": "ip-172-31-29-2.eu-west-1.compute.internal"
                        }, 
                        {
                            "name": "headlamp_database_name", 
                            "value": "rman"
                        }, 
                        {
                            "name": "headlamp_database_password", 
                            "value": "password"
                        }, 
                        {
                            "name": "headlamp_database_user", 
                            "value": "rman"
                        }, 
                        {
                            "name": "headlamp_heapsize", 
                            "value": "651165696"
                        }
                    ], 
                    "roleType": "REPORTSMANAGER"
                }, 
                {
                    "items": [
                        {
                            "name": "firehose_heapsize", 
                            "value": "651165696"
                        }, 
                        {
                            "name": "firehose_non_java_memory_bytes", 
                            "value": "847249408"
                        }
                    ], 
                    "roleType": "SERVICEMONITOR"
                }
            ]
        }, 
        "displayName": "Cloudera Management Service", 
        "name": "mgmt", 
        "roles": [
            {
                "config": {
                    "items": [
                        {
                            "name": "role_jceks_password", 
                            "value": "b076rooj9ui19u5x0eph6jsno"
                        }
                    ]
                }, 
                "hostRef": {
                    "hostId": "3cf63d3c-1a48-4cbb-a844-93f0529be9e9"
                }, 
                "name": "mgmt-ALERTPUBLISHER-c858063cffdcde7ef3fdce09342bdc65", 
                "type": "ALERTPUBLISHER"
            }, 
            {
                "config": {
                    "items": [
                        {
                            "name": "role_jceks_password", 
                            "value": "6mmve3ni9x3ae0m4yvirxub66"
                        }
                    ]
                }, 
                "hostRef": {
                    "hostId": "3cf63d3c-1a48-4cbb-a844-93f0529be9e9"
                }, 
                "name": "mgmt-EVENTSERVER-c858063cffdcde7ef3fdce09342bdc65", 
                "type": "EVENTSERVER"
            }, 
            {
                "config": {
                    "items": [
                        {
                            "name": "role_jceks_password", 
                            "value": "5vaelwsru3erm8veq7hpfwn0d"
                        }
                    ]
                }, 
                "hostRef": {
                    "hostId": "3cf63d3c-1a48-4cbb-a844-93f0529be9e9"
                }, 
                "name": "mgmt-HOSTMONITOR-c858063cffdcde7ef3fdce09342bdc65", 
                "type": "HOSTMONITOR"
            }, 
            {
                "config": {
                    "items": [
                        {
                            "name": "role_jceks_password", 
                            "value": "22byk0b5jzq34n6u157k01uut"
                        }
                    ]
                }, 
                "hostRef": {
                    "hostId": "3cf63d3c-1a48-4cbb-a844-93f0529be9e9"
                }, 
                "name": "mgmt-REPORTSMANAGER-c858063cffdcde7ef3fdce09342bdc65", 
                "type": "REPORTSMANAGER"
            }, 
            {
                "config": {
                    "items": [
                        {
                            "name": "role_jceks_password", 
                            "value": "aj0aowmfw84b9itfzy8ig2jl2"
                        }
                    ]
                }, 
                "hostRef": {
                    "hostId": "3cf63d3c-1a48-4cbb-a844-93f0529be9e9"
                }, 
                "name": "mgmt-SERVICEMONITOR-c858063cffdcde7ef3fdce09342bdc65", 
                "type": "SERVICEMONITOR"
            }
        ], 
        "type": "MGMT"
    }, 
    "managerSettings": {
        "items": [
            {
                "name": "CLUSTER_STATS_START", 
                "value": "10/22/2012 22:20"
            }, 
            {
                "name": "PUBLIC_CLOUD_STATUS", 
                "value": "ON_PUBLIC_CLOUD"
            }, 
            {
                "name": "REMOTE_PARCEL_REPO_URLS", 
                "value": "https://archive.cloudera.com/cdh5/parcels/{latest_supported}/,http://ip-172-31-24-77.eu-west-1.compute.internal:80/cdh5.9,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,https://archive.cloudera.com/navigator-keytrustee5/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/"
            }
        ]
    }, 
    "timestamp": "2017-03-08T08:57:42.538Z", 
    "users": [
        {
            "name": "__cloudera_internal_user__mgmt-EVENTSERVER-c858063cffdcde7ef3fdce09342bdc65", 
            "pwHash": "dd2cc2d56345c62c3d7fcbcbfe1b8ff69c00a589ce46e4eb1c1922d9a637d8b3", 
            "pwLogin": true, 
            "pwSalt": 6521095989454848880, 
            "roles": [
                "ROLE_USER"
            ]
        }, 
        {
            "name": "__cloudera_internal_user__mgmt-HOSTMONITOR-c858063cffdcde7ef3fdce09342bdc65", 
            "pwHash": "7c84882e220dca0449aed302917fc2a3145a4760ec7ceebcc8789beb940c5369", 
            "pwLogin": true, 
            "pwSalt": -7241826730058249425, 
            "roles": [
                "ROLE_USER"
            ]
        }, 
        {
            "name": "__cloudera_internal_user__mgmt-REPORTSMANAGER-c858063cffdcde7ef3fdce09342bdc65", 
            "pwHash": "ab2a8719429c69d860bb114a4f783eaf6a21f97472902dfb5f348a4ea4dcb2a7", 
            "pwLogin": true, 
            "pwSalt": 3365467769773870405, 
            "roles": [
                "ROLE_USER"
            ]
        }, 
        {
            "name": "__cloudera_internal_user__mgmt-SERVICEMONITOR-c858063cffdcde7ef3fdce09342bdc65", 
            "pwHash": "a170341c3bbeca2092567b8cf2983d483a28d8ce3ca822672a5b2cd265fa37bc", 
            "pwLogin": true, 
            "pwSalt": -4353633077661114056, 
            "roles": [
                "ROLE_USER"
            ]
        }, 
        {
            "name": "admin", 
            "pwHash": "05ebfe52e680aaa2c99e416ea89cb6f8479f13e90c9f75e75da76d3313c7b048", 
            "pwLogin": true, 
            "pwSalt": -6947069293736981653, 
            "roles": [
                "ROLE_LIMITED"
            ]
        }, 
        {
            "name": "minotaur", 
            "pwHash": "8d21b58af2dd4d6ed7049ae38321590487a6d2ec0050a37a282514bd6b34f85b", 
            "pwLogin": true, 
            "pwSalt": -5722724223557509099, 
            "roles": [
                "ROLE_CONFIGURATOR"
            ]
        }, 
        {
            "name": "ricardo-aires", 
            "pwHash": "8e514b7192887ff6358ca9093a2a725b395d2d2b8795e184f4bd62308c7890bf", 
            "pwLogin": true, 
            "pwSalt": 80877347030088072, 
            "roles": [
                "ROLE_ADMIN"
            ]
        }
    ], 
    "versionInfo": {
        "buildTimestamp": "20161019-1014", 
        "buildUser": "jenkins", 
        "gitHash": "518f0d6d44abc87bc392646e4369a20c8192b7cf", 
        "snapshot": false, 
        "version": "5.8.3"
    }
}
```