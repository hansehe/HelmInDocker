FROM python:3.8.1-buster

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl ca-certificates apt-transport-https gnupg

# Install kubectl
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list && \
    apt-get update && \
    apt-get install -y kubectl

# Install helm
RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 && \
    chmod 700 get_helm.sh && \
    ./get_helm.sh

WORKDIR /charts

COPY /default/.kube/config /charts/.kube/config

ENV KUBECONFIG=$KUBECONFIG:/charts/.kube/config

ENTRYPOINT [""]