#!/bin/bash -e

NEW_VERSION=$1

mvn versions:update-parent -DparentVersion=$NEW_VERSION -DgenerateBackupPoms=false -Pbump-version
mvn versions:set -DnewVersion=$NEW_VERSION -DgenerateBackupPoms=false -DgroupId=org.keycloak* -DartifactId=* -Pbump-version
