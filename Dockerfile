FROM busybox:latest

COPY ["Claude Cowork Excel - Sales Material.html", "/www/index.html"]
# Same page at the original filename so bookmarks and proxy paths work
COPY ["Claude Cowork Excel - Sales Material.html", "/www/Claude Cowork Excel - Sales Material.html"]
COPY ["ldc-demo.html", "/www/ldc-demo.html"]

EXPOSE 4008

CMD ["httpd", "-f", "-p", "4008", "-h", "/www"]
