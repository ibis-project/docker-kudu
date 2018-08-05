#!/bin/bash

if [[ "$KUDU_MASTER" = "true" ]]; then
  supervisorctl start kudu-master
fi

/wait-for-it.sh kudu:7051 -t 120
/wait-for-it.sh kudu:8051 -t 120
rc=$?
if [ $rc -ne 0 ]; then
    echo -e "\n----------------------------------------"
    echo -e "    Kudu Master not ready! Exiting..."
    echo -e "----------------------------------------"
    exit $rc
fi

supervisorctl start kudu-tserver

/wait-for-it.sh localhost:7050 -t 120
/wait-for-it.sh localhost:8050 -t 120
rc=$?
if [ $rc -ne 0 ]; then
    echo -e "\n----------------------------------------"
    echo -e "  Kudu Tablet Server not ready! Exiting..."
    echo -e "----------------------------------------"
    exit $rc
fi
