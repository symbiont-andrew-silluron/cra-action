FROM node:12.16.3-alpine

RUN apk update && \
    apk upgrade && \
    apk add git openssh

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]