#!/bin/bash
helm repo add k8s_google https://kubernetes-charts.storage.googleapis.com/
helm repo update
helm install nginx-ingress k8s_google/nginx-ingress --version 1.26.1
helm install my-helm-chart ./my-helm-chart
