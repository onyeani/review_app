from php:7.2-apache

# Update apt repo
RUN apt update -y

# Update system. I commented it out to save data
#RUN apt upgrade -y

# Install and enable php extension 'mysqli'
# mysqli helps php make connection with mysql/mariadb db
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Install nano
RUN apt install nano -y

# Copy app files from host m/c to web server
COPY ./addreview.php /var/www/html
COPY ./reviews.html /var/www/html

CMD ["apache2-foreground"]
