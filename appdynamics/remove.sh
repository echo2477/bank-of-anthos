#!/bin/bash

echo "Removing bank of anthos"
kubectl -n ${NAMESPACE:-bank-of-anthos-appdynamics} delete -f ../kubernetes-manifests
kubectl delete -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
kubectl delete ns ${NAMESPACE:-bank-of-anthos-appdynamics}
