FROM alpine:3.14.0

ADD configure.sh /configure.sh

RUN apk update && \
 apk add openjdk8 curl busybox tzdata && \
 cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
 echo Asia/Shanghai > /etc/timezone && \
 apk del tzdata && \
 rm -rf /tmp/* /var/cache/apk/*

RUN apk add --no-cache ca-certificates unzip wget \
 && chmod +x /configure.sh
 
CMD /configure.sh
