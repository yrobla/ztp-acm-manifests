# ztp-acm-manifests
The purpose of this repository is to host all manifests used in Zero Touch Deployment (https://github.com/redhat-ztp/ztp-cluster-deploy) to deploy an ACM cluster, enroll the spoke clusters, and create
the needed subscriptions for configuring the clusters

# For external use with Zero Touch Deployment
- You will need to fork this repository and the RAN manifest repository at https://github.com/redhat-ztp/ztp-ran-manifests. Check the RAN manifest repository for more info.

- You will need to execute the [site_gen.sh](https://github.com/redhat-ztp/ztp-acm-manifests/blob/main/site_gen.sh) script to create your cluster profile directory.

- The [site_gen.sh](https://github.com/redhat-ztp/ztp-acm-manifests/blob/main/site_gen.sh) script takes 3 parameters with the following order to execute: 
    - Cluster name (your cluster name)
    - Profile (which profile you want to apply to your cluster. It is either cu or du)
    - RAN manifest repo (url for the ran manifest repository you forked as we mentioned above)

- After you run the site_gen.sh script, upload the generated files to the ztp-acm-manifest repository you forked as we mentioned above.

- In the (Zero Touch Deployment -> ACM spoke inventory/hosts -> clusters group) https://github.com/redhat-ztp/ztp-cluster-deploy/blob/master/acm-spoke/inventory/hosts.sample#L9 you will need to set the cluster acm_manifest_repo parameter to the ztp-acm-manifest repository you forked and update.

- Check the https://github.com/redhat-ztp/ztp-cluster-deploy/tree/master/acm-spoke for more info about how to execute the ACM spoke playbook.