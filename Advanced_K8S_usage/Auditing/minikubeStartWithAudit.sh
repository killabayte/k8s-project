#!/bin/bash
#Debugging command
minikube -v=10 --kubernetes-version v1.8.0 --cpus=4 --memory=8048 --extra-config=apiserver.Authorization.Mode=RBAC --extra-config=apiserver.Audit.LogOptions.Path=/var/log/audit.log --extra-config=apiserver.Audit.PolicyFile=/etc/kubernetes/addons/audit-policy.yaml
#Worked for me, command
#But this way, requires intrusion to kube api server manifest on minikube node and add some volume for path with audit-policy and logs
minikube start --extra-config=apiserver.authorization-mode=RBAC --extra-config=apiserver.audit-log-path=/var/log/audit.log --extra-config=apiserver.audit-policy-file=/etc/ssl/certs/audit-policy.yaml
