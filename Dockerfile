FROM ubuntu:16.04
LABEL maintainer="Touhid Shaikh"
RUN apt-get update -y && \
    apt-get install -y apache2 && \
    apt-get install -y php7.0 libapache2-mod-php7.0 php7.0-cli php7.0-common php7.0-mbstring php7.0-gd php7.0-intl php7.0-xml php7.0-mysql php7.0-mcrypt php7.0-zip && \
    apt-get install -y git

RUN rm -rf /var/www/html/*
WORKDIR /var/www/html/
RUN git clone https://github.com/touhidshaikh/FIBox.git

#Configuring Apache
RUN chown -R www-data:www-data /var/www
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

#Exposing Port 80 of the container
EXPOSE 80

#Starting Apache Service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
