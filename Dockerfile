FROM nginx
RUN apt-get update -y
COPY ./ /var/www/nginx/html
EXPOSE 5000
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off"]
HEALTHCHECK CMD curl --fail http://localhost:5000/health || exit 1
