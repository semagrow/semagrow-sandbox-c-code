#!/bin/sh

if [ "$PACKAGE_STAGING_DIR" = '' ]; then
    PACKAGE_STAGING_DIR=./;
fi

if [ $1 = 'rpm' ]; then
    echo "deploy rpm"
    PACKAGE_NAME=semagrow_stack_c_code;
    PACKAGE_VERSION=1.0.0_rc1;

    #note that PACKAGE_STAGIN_DIR is filled by continuum's SemaGrow-BE (build environment)
    /usr/sbin/checkinstall -y --install=no --showinstall=no --pkglicense=Apache2 --pakdir=$PACKAGE_STAGING_DIR --pkgname=$PACKAGE_NAME --pkgversion=$PACKAGE_VERSION -R
fi
if [ $1 = 'debian' ]; then
    echo "deploy debian"
fi

