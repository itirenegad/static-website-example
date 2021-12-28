FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y nginx
COPY ./ /var/www/nginx/html
EXPOSE 5000
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off"]
HEALTHCHECK CMD curl --fail http://localhost:5000/health || exit 1
