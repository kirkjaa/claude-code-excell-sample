FROM busybox:latest

COPY ["Claude Cowork Excel - Sales Material.html", "/www/index.html"]
COPY ["ldc-demo.html", "/www/ldc-demo.html"]

EXPOSE 4008

CMD ["httpd", "-f", "-p", "4008", "-h", "/www"]
