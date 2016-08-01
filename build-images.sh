#!/bin/bash

APPNAME=$(basename `pwd -P`)
APPNAME="${APPNAME/-/}"
BUILD_DIR="${PWD}/docker/php"
PHP_VERSIONS=(5.4 5.5 5.6 7.0)

for VERSION in ${PHP_VERSIONS[@]}; do
    PHP_VERSION=${VERSION} envsubst < ./docker/base/php-Dockerfile.template > ${BUILD_DIR}/${VERSION}-Dockerfile
    STRIPPED_VERSION=${VERSION/./}
    docker build -t ${APPNAME}_phpunit_${STRIPPED_VERSION} -f ${BUILD_DIR}/${VERSION}-Dockerfile .
done
