ARG ARCH
FROM multiarch/alpine:${ARCH}-edge

RUN apk add --no-cache bash lynx curl git

COPY ./.slacktee /root/.slacktee
RUN git clone https://github.com/course-hero/slacktee.git /tmp/slacktee &&\
    cd /tmp/slacktee &&\
    bash ./install.sh /usr/bin &&\
    rm -fr /tmp/slacktee

COPY ./online.sh /opt/online.sh
RUN chmod +x /opt/online.sh

ENTRYPOINT [ "/opt/online.sh" ]
CMD "core-3-m-sata"