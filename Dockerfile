FROM nginx:alpine

# Copy the static files into the Nginx web server directory
COPY build/index.html /usr/share/nginx/
COPY build/favicon.ico /usr/share/nginx/
COPY build/logo192.png /usr/share/nginx/
COPY build/logo512.png /usr/share/nginx/
COPY build/manifest.json /usr/share/nginx/
COPY build/robots.txt /usr/share/nginx
COPY build/static/css /usr/share/nginx/css/
COPY build/static/js /usr/share/nginx/html/js/
COPY build/asset-manifest.json /usr/share/nginx
COPY build/_redirects /usr/share/nginx/
EXPOSE 80

# Command to start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
