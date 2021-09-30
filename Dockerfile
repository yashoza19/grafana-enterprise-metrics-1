# Build the manager binary
FROM quay.io/operator-framework/helm-operator:v1.10.1

ENV HOME=/opt/helm
COPY watches.yaml ${HOME}/watches.yaml
COPY helm-charts  ${HOME}/helm-charts
WORKDIR ${HOME}

#Required OpenShift Labels
LABEL name="Grafana Enterprise Metrics (GEM) Operator" \
      vendor="Grafana Labs" \
      version="v0.0.1" \
      release="1" \
      summary="This is an operator for Grafana Enterprise Metrics (GEM) using the helm." \
      description="This operator will deploy GEM to the cluster."

# Required Licenses
COPY licenses /licenses 

