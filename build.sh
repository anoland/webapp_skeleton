#https://hub.docker.com/r/centurylink/golang-builder/
docker run --rm -v "$(pwd):/src" -v /var/run/docker.sock:/var/run/docker.sock centurylink/golang-builder anoland/webapp
docker run -d -p 8080:8080 -v /var/lib/webapp:/var/lib/webapp anoland/webapp

