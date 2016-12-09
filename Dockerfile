# TODO add volumes for data and logs
FROM busybox

ADD s6-overlay-amd64.tar.gz /
ENV S6_KEEP_ENV=1
COPY /etc/services.d/ /etc/services.d/

COPY webapp /bin/
ENV PORT 8080
EXPOSE 8080:8080

VOLUME /var/lib/webapp/data

ENTRYPOINT ["/init"]
CMD []
