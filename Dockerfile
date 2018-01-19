FROM gradle:4.4-jdk8-alpine
USER root
# Install git
RUN apk update && apk upgrade && \
apk add --no-cache bash git openssh
