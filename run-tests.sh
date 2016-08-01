#!/bin/bash

APPNAME=$(basename `pwd -P`)
APPNAME="${APPNAME/-/}"
PHP_VERSIONS=(5.4 5.5 5.6 7.0)

for VERSION in ${PHP_VERSIONS[@]}; do
    STRIPPED_VERSION=${VERSION/./}
    IMAGENAME=${APPNAME}_phpunit_${STRIPPED_VERSION}

    echo "Running tests under PHP ${VERSION}"
    docker run --rm -v $(pwd):/app -w /app $imagename php vendor/bin/phpunit -c phpunit.xml
done
