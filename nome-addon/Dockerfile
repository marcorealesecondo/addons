FROM alpine:3.18

RUN apk add --no-cache util-linux

COPY run.sh /run.sh

RUN chmod +x /run.sh

CMD ["/run.sh"]
