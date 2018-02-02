FROM gradle:4.4-jdk8-alpine
USER root
# Install git and openssl
RUN apk update && apk upgrade && \
apk add --no-cache bash git openssh && \
apk add --update openssl && \
apk --no-cache add curl && \
apk add docker &&\
rc-update add docker boot
