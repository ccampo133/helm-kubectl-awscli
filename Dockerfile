ARG HELM_KUBECTL_VERSION=2.14.3

FROM dtzar/helm-kubectl:${HELM_KUBECTL_VERSION}

ARG AWSCLI_VERSION=1.18.48

RUN apk add -U --no-cache python3 ca-certificates jq \
    && pip3 install --no-cache-dir --upgrade pip \
    && pip3 --no-cache-dir install awscli==${AWSCLI_VERSION}

WORKDIR /config

CMD bash
