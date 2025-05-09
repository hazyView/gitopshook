FROM alpine

LABEL maintainer="fred <mail@fred.nl>"

USER root

# Install cool software
RUN     apk add curl git && \
        curl -LO https://dl.k8s.io/release/v1.26.0/bin/linux/amd64/kubectl && \
        cp kubectl /usr/local/bin/kubectl && \
        chmod +x /usr/local/bin/kubectl

USER nobody

#ENTRYPOINT ["/usr/bin/kubectl"]