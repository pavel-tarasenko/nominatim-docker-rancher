FROM mediagis/nominatim:3.3
RUN apt-get -y update -qq && apt-get -y install wget htop sysstat
COPY optimize-postgres.sh /app/optimize-postgres.sh
COPY init-rancher.sh /app/init-rancher.sh
