FROM busybox
LABEL maintainer="fred <mail@fred.nl>"
USER root
CMD ["sh", "-c", "echo 'Hello World'; echo 'Hello World 2'; echo 'Hello World 3'"]
USER nobody
