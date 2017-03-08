# Upgrade Cloudera Manager

Use the API on the command line to:

1. Report the latest available version of the API

    ```code
    $ curl -u 'ricardo-aires' -s -X GET "http://tardis0:7180/api/version" 
    Enter host password for user 'ricardo-aires':
    v15
    ```

1. Report the CM version

    ```code
    $ curl -u 'ricardo-aires' -s -X GET "http://tardis0:7180/api/v15/cm/version" |  python -m json.tool
    Enter host password for user 'ricardo-aires':
    {
        "buildTimestamp": "20170120-1038",
        "buildUser": "jenkins",
        "gitHash": "aa0b5cd5eceaefe2f971c13ab657020d96bb842a",
        "snapshot": false,
        "version": "5.10.0"
    }
    ```

1. List all CM users

    ```code
    $ curl -u 'ricardo-aires' -s -X GET "http://tardis0:7180/api/v15/users" |  python -m json.tool
    Enter host password for user 'ricardo-aires':
    {
        "items": [
            {
                "name": "admin",
                "roles": [
                    "ROLE_LIMITED"
                ]
            },
            {
                "name": "minotaur",
                "roles": [
                    "ROLE_CONFIGURATOR"
                ]
            },
            {
                "name": "ricardo-aires",
                "roles": [
                    "ROLE_ADMIN"
                ]
            }
        ]
    }
    ```

1. Report the database server in use by CM

    ```code
    $ curl -u 'ricardo-aires' -s -X GET "http://tardis0:7180/api/v15/cm/scmDbInfo" |  python -m json.tool
    Enter host password for user 'ricardo-aires':
    {
        "embeddedDbUsed": false,
        "scmDbType": "MYSQL"
    }
    ```