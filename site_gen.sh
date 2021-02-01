#!/usr/bin/env bash

CLUSTER_NAME=$1
profile=$2

if [ $profile == "cu" ]; then
  cp -rf subscriptions/sites/sample_site_cu_subscription subscriptions/sites/${CLUSTER_NAME}_subscription
  sed -i "s/sample-site-cu/$CLUSTER_NAME/g" subscriptions/sites/${CLUSTER_NAME}_subscription/*
elif [ $profile == "du" ]; then
  cp -rf subscriptions/sites/sample_site_du_subscription subscriptions/sites/${CLUSTER_NAME}_subscription
  sed -i "s/sample-site-du/$CLUSTER_NAME/g" subscriptions/sites/${CLUSTER_NAME}_subscription/*
else
  echo "Profile should be either cu or du. Profile=" $profile
fi