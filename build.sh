#!/bin/sh
echo "running configure"
echo $PACKAGE_STAGIN_DIR

./configure
if [ $? = 0 ]; then
    echo "configure complete"
    echo "running make"
    make
    makeExit=$?;
    if [ $makeExit != 0 ]; then
        echo "error running make"
        exit 1;
    else
        echo "running make complete"
        exit 0;
    fi
else
    echo "error running configure"
    exit 1;
fi
