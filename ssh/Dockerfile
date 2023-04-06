FROM alpine:latest

RUN apk add --no-cache openssh

COPY entrypoint.sh /

EXPOSE 22

# what do?
ENTRYPOINT ["/entrypoint.sh"]
