FROM nginx:alpine

# Copia meu código para dentro da imagem
COPY 12factor.net/ /usr/share/nginx/html

CMD cd /usr/share/nginx/html && \
sed -e s/hostname/$(hostname)/ -i index.html && \
sed -e s/endip/$(hostname -i)/ -i index.html; nginx -g 'daemon off;'

 # Porta da aplicação
EXPOSE 80
