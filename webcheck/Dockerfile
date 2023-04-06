FROM alpine:latest

USER root
WORKDIR /

RUN apk add --no-cache bash curl jq

COPY run.sh /tmp

RUN chmod 0755 /tmp/run.sh

# what do?
CMD [ "/tmp/run.sh" ]
