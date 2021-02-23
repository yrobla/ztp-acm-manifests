# ztp-acm-manifests
The purpose of this repository is to host all manifests used in Zero Touch Deployment (https://github.com/redhat-ztp/ztp-cluster-deploy) to deploy an ACM cluster and create the needed subscriptions for configuring the clusters.

# For external use with Zero Touch Deployment
- You will need to fork this repo and the RAN manifest repository at https://github.com/redhat-ztp/ztp-ran-manifests. Check the RAN manifest repository for more info.

- You will need to execute the [site_gen.sh](https://github.com/redhat-ztp/ztp-acm-manifests/blob/main/site_gen.sh) script to update the subscriptions channels repo with the new ztp-ran-manifest you forked from the previous step.

- The [site_gen.sh](https://github.com/redhat-ztp/ztp-acm-manifests/blob/main/site_gen.sh) script takes 1 parameter:
    - RAN manifest repo (url for the ran manifest repository you forked as we mentioned above)

- After you run the site_gen.sh script update the ztp-acm-manifest repository you forked as we mentioned above.