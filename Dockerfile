FROM alpine:3.9
#Install aws-cli and mongodb
RUN apk update && \
    apk --no-cache add curl python3 mongodb-tools
RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
        python3 get-pip.py && \
        pip3 install awscli --upgrade

ADD scripts/setup-credentials /usr/bin/
ADD scripts/backup /usr/bin/
RUN chmod +x /usr/bin/setup-credentials /usr/bin/backup

ENTRYPOINT setup-credentials && backup
