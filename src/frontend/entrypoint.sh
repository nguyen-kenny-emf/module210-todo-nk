#!/bin/sh
 
echo "Running custom frontend init script..."
 
PUBLIC_IP=$(curl -s https://api64.ipify.org)
BACKEND_URL="http://$PUBLIC_IP:8080"
 
sed -i "s|__BACKEND_URL__|$BACKEND_URL|g" /usr/share/nginx/html/app.js
 
 