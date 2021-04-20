FROM alpine:3.13
LABEL ORGANIZATION="ossystem"\
      MAINTAINER="u@xaked.com"\
      OS_VERSION="3.13"\
      OS_FAMILY="alpine"
RUN apk add --no-cache \
    terraform=0.14.4-r0 \
    curl=7.76.1-r0 \
    git=2.30.2-r0
