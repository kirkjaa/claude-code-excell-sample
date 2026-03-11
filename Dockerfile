FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY ["Claude Cowork Excel - Sales Material.html", "/usr/share/nginx/html/"]
COPY ["Claude Cowork Excel - Sales Material.html", "/usr/share/nginx/html/index.html"]

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
