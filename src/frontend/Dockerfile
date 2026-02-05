FROM nginx:latest
 
COPY . /usr/share/nginx/html
 
# Script exécuté automatiquement par nginx au démarrage
COPY entrypoint.sh /docker-entrypoint.d/99-backend-ip.sh
 
RUN chmod +x /docker-entrypoint.d/99-backend-ip.sh
 
EXPOSE 80
 