FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
COPY og-cover.jpg /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/
COPY vendor/ /usr/share/nginx/html/vendor/
COPY fonts/ /usr/share/nginx/html/fonts/
COPY nginx-cache.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
