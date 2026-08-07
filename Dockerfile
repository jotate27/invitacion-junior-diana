FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
COPY og-cover.jpg /usr/share/nginx/html/
EXPOSE 80
