#!/usr/bin/env bash

RAN_MANIFEST_REPO=$1
BRANCH=${2:-main}
ORG_RAN_MANIFEST_REPO=https://github.com/redhat-ztp/ztp-ran-manifests

if [ ! -z $RAN_MANIFEST_REPO ]; then
  for f in $(find subscriptions/ -name *.yaml); do
    #sed --debug -i "s,$ORG_RAN_MANIFEST_REPO,$RAN_MANIFEST_REPO,g" $f
    sed -i "s,$ORG_RAN_MANIFEST_REPO,$RAN_MANIFEST_REPO,g" $f
    sed -i "s,^\( *apps.open-cluster-management.io/git-branch:\).*,\1 ${BRANCH},g" $f
  done
fi
