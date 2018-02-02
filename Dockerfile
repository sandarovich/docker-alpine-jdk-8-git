FROM gradle:4.4-jdk8-alpine
USER root
# Install git and openssl, docker daemon
RUN apk update && apk upgrade && \
apk add --no-cache bash git openssh && \
apk add --update openssl && \
apk --no-cache add curl && \
apk add docker && \
apk add openrc && \
#rc-update add docker boot &&\
apk add sudo

CMD "rc-update add docker boot"
#RUN adduser -D docker_runner
#RUN adduser -s /bin/ash -G docker docker_runner
#USER docker_runner
#ENTRYPOINT ["sh"]
