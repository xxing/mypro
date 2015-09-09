#/bin/bash

host=""


unset KUBECONFIG
sudo yum install -y httpd-tools
touch htpasswd
for i in 1 2 3; do htpasswd -b ./htpasswd user$i redhat; done
sudo /data/src/github.com/openshift/origin/_output/local/go/bin/openshift start --public-master=${host}:8443 --write-config=openshift.local.config

