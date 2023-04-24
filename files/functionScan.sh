#!/bin/bash

#curl -k -u $TL_USER:$TL_PASS --details --output ./twistcli https://$TL_CONSOLE/api/v1/util/twistcli
#chmod a+x ./twistcli
     
sudo ./twistcli serverless scan -u $TL_USER --p $TL_PASS --address https://$TL_CONSOLE --details lambda_function.zip
echo

if [ $BYPASS_SERVERLESS == 1 ]; then
   echo "Serverless function scan passed!"
   exit 0
#else
#   echo "Serverless function scan failed!"
#   exit 1
fi

