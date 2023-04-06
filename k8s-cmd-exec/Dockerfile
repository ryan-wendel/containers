FROM alpine:latest

ARG KUBECTL_VERSION=1.21.0

RUN apk add --no-cache jq bash curl

RUN mkdir -p /opt/kubectl && \
    curl --silent -L -o /opt/kubectl/kubectl "https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl" && \
    chmod 0755 /opt/kubectl/kubectl && \
    ln -s /opt/kubectl/kubectl /usr/local/bin
