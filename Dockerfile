FROM nginx:alpine

RUN apk update

#Copiar el archivo de prueba
COPY index.html /var/www/

# Copiar el archivo de configuración del servidor proxy inverso
COPY default.conf /etc/nginx/conf.d/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]