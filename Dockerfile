FROM alpine:3.14
ARG TERRAFORM_VERSION=0.15.5
LABEL ORGANIZATION="ossystem"\
      MAINTAINER="u@xaked.com"\
      OS_VERSION="3.14"\
      OS_FAMILY="alpine"\
      TERRAFORM_VERSION=${TERRAFORM_VERSION}
ENV TERRAFORM_VERSION=${TERRAFORM_VERSION}
RUN apk add --no-cache openssh ansible curl git \
    && cd /usr/local/bin \
    && curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -o terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
    && unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
    && rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip
