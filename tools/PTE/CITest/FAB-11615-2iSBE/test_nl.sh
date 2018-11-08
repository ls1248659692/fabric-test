#!/bin/bash

#
# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0
#

FabricTestDir=$GOPATH/src/github.com/hyperledger/fabric-test
NLDir=$FabricTestDir/tools/NL

CWD=$PWD

cd $NLDir
echo "[$0] NL dir: $PWD"
# bring down network
echo "[$0] bring down network"
./networkLauncher.sh -a down
# bring up network
echo "[$0] bring up network"
./networkLauncher.sh -o 3 -x 2 -r 4 -p 2 -k 4 -z 3 -n 2 -e 3 -t kafka -f test -w localhost -S enabled -c 2s -l WARN -B 500 -d couchdb
cd $CWD
echo [$0] "current dir: $PWD"