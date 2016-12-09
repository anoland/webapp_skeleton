# TODO add volumes for data and logs
FROM busybox

ADD s6-overlay-amd64.tar.gz /
ENV S6_KEEP_ENV=1
COPY /etc/services.d/ /etc/services.d/

COPY helloworld /bin/
ENV PORT 8080
EXPOSE 8080:8080

VOLUME /var/lib/helloworld/data

ENTRYPOINT ["/init"]
CMD []
