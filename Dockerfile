FROM alpine

LABEL maintainer="fred <mail@fred.nl>"

USER root

# Install cool software
RUN     apk add curl git nginx && \
        curl -LO https://dl.k8s.io/release/v1.26.0/bin/linux/amd64/kubectl && \
        cp kubectl /usr/local/bin/kubectl && \
        chmod +x /usr/local/bin/kubectl

#Commented out as root is required to perform commands within the container
#USER nobody

#ENTRYPOINT ["/usr/bin/kubectl"]

#Copy default Nginx config
COPY nginx.conf /etc/nginx/nginx.conf

#Expose port 80
EXPOSE 80

#Start Nginx
CMD ["nginx", "-g", "daemon off;"]