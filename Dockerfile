From nginx:latest
COPY index.html /usr/share/nginx/html/index.html
COPY -r assets /usr/share/nginx/html/
EXPOSE 80
