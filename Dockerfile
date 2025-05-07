FROM busybox
LABEL maintainer="fred <mail@fred.nl>"
USER root
CMD echo "Hello World"
USER nobody
