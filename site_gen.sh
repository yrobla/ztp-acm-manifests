#!/usr/bin/env bash

CLUSTER_NAME=$1
PROFILE=$2
RAN_MANIFEST_REPO=$3
ORG_RAN_MANIFEST_REPO=https://github.com/redhat-ztp/ztp-ran-manifests

if [ $PROFILE == "cu" ]; then
  cp -rf subscriptions/sites/sample_site_cu_subscription subscriptions/sites/${CLUSTER_NAME}_subscription
  sed -i "s/sample-site-cu/$CLUSTER_NAME/g" subscriptions/sites/${CLUSTER_NAME}_subscription/*
elif [ $PROFILE == "du" ]; then
  cp -rf subscriptions/sites/sample_site_du_subscription subscriptions/sites/${CLUSTER_NAME}_subscription
  sed -i "s/sample-site-du/$CLUSTER_NAME/g" subscriptions/sites/${CLUSTER_NAME}_subscription/*
else
  echo "Profile should be either cu or du. Profile=" $PROFILE
  exit 0
fi

if [ ! -z $RAN_MANIFEST_REPO ]; then
  for f in $(find subscriptions/ -name *.yaml); do
    #sed --debug -i "s,$ORG_RAN_MANIFEST_REPO,$RAN_MANIFEST_REPO,g" $f
    sed -i "s,$ORG_RAN_MANIFEST_REPO,$RAN_MANIFEST_REPO,g" $f
  done
fi