FROM mediagis/nominatim:3.3
RUN apt -y install wget htop iostat
COPY optimize-postgres.sh /app/optimize-postgres.sh
COPY init-rancher.sh /app/init-rancher.sh
