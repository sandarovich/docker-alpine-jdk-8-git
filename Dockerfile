FROM gradle:4.4-jdk8-alpine
USER root
# Install git and openssl, docker daemon
RUN apk update && apk upgrade && \
apk add --no-cache bash git openssh && \
apk add --update openssl && \
apk --no-cache add curl && \
apk add docker 
# rc-update add docker boot &&\
# service docker start
COPY dockerd-entrypoint.sh /usr/local/bin/
COPY dockerd-cmd.sh /usr/local/bin/
COPY setup-compose /usr/local/bin/
EXPOSE 2375 ENTRYPOINT ["dockerd-entrypoint.sh"]
CMD ["dockerd-cmd.sh"]
