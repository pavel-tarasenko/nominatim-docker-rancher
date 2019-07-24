FROM mediagis/nominatim:3.3
COPY optimize-postgres.sh /app/optimize-postgres.sh
COPY init-rancher.sh /app/init-rancher.sh
