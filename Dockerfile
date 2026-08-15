FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
# Ojo: este Dockerfile enumera los archivos del root uno a uno. Al renombrar o
# borrar un asset de aqui hay que actualizarlo, o el COPY falla y el build entero
# se cae — el sitio se queda servido en la version anterior sin senal evidente.
COPY og-cover-v2.jpg /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/
COPY vendor/ /usr/share/nginx/html/vendor/
COPY fonts/ /usr/share/nginx/html/fonts/
COPY nginx-cache.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
