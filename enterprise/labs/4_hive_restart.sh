#!/bin/bash
#############################################################################################
#   4_hive_restart.sh                                                                       #
#   version 1. Only a draft it should:                                                      #
#               - take arguments like user/password/cluster/service and even CM_URL         #
#               - trap errors over the commands issues and cancel/stop signs                #
#               - implement timeout                                                         #
#               - check for concurrent executions                                           #
#               - implement logging and housekeeping                                        #
#               NOT PRODUCTION READY                                                        #
#############################################################################################
# GLOBAL VARIABLES
CM_URL=http://34.248.203.134:7180   # it should be passed as an argument
API_VERSION=v12
CLUSTER_NAME=ricardo-aires          # it should be passed as an argument
SERVICE=hive                        # it should be passed as an argument
STATUS_ENDPOINT=${CM_URL}/api/${API_VERSION}/clusters/${CLUSTER_NAME}/services/${SERVICE}
STOP_ENDPOINT=${STATUS_ENDPOINT}/commands/stop
START_ENDPOINT=${STATUS_ENDPOINT}/commands/start
USER=ricardo-aires                  # it should be passed as an argument
PASSWORD=cloudera                   # it should be passed as an argument
STATUS=NULL

# Check Service Status, it should have error checking
function check_service {
    curl -u "${USER}:${PASSWORD}" -s -X GET $STATUS_ENDPOINT | grep serviceState | tr -s '\"' ' ' | awk '{print $3}'
}

# Start Service, it should have error checking
function start_service {
    curl -u "${USER}:${PASSWORD}" -s -X POST $START_ENDPOINT -o /dev/null
}

# Stop Service, it should have error checking
function stop_service {
    curl -u "${USER}:${PASSWORD}" -s -X POST $STOP_ENDPOINT -o /dev/null
}

#MAIN
# Check Current STATUS
STATUS=`check_service`
echo "${SERVICE} is ${STATUS}"

# If not stopped, stop it
if [ $STATUS != 'STOPPED' ]; then
    stop_service
fi

# while not stopped check the status, it should have a timeout
while [ $STATUS != 'STOPPED' ]
do
    sleep 30
    STATUS=`check_service`
    if [ $STATUS == 'STOPPED' ]; then
        echo "${SERVICE} was ${STATUS}"
    fi
done

# start service    
start_service

# while not started check the status, it should have a timeout
while [ $STATUS != 'STARTED' ]
do
    sleep 30
    STATUS=`check_service`
done

# report final status
echo "${SERVICE} was ${STATUS}"