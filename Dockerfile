FROM gradle:4.4-jdk8-alpine

# Install git
RUN suid apk update && apk upgrade && \
apk add --no-cache bash git openssh
