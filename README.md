## DEPLOYING WORDPRESS AS A MULTI-CONTAINER APPLICATION USE DOCKER-COMPOSE FILE  
  
This repository contains configuration files for our multi-container application.  
---

Folders [nginx-conf](https://github.com/ausard/EP-wp-docker-compose/tree/master/nginx-conf), [wp-conf](https://github.com/ausard/EP-wp-docker-compose/tree/master/wp-conf) contains the config files of the respective containers.  

---  

Folder [php](https://github.com/ausard/EP-wp-docker-compose/tree/master/php) and file [Dockerfile](https://github.com/ausard/EP-wp-docker-compose/blob/master/php/Dockerfile) - file for our php image  

---
### Files
.env : file contains variables for docker-compose file

Jenkinsfile, Jenkinsfile_config : files for our pipeline jobs in Jenkins  

install.sh - download latest version of wordpress and unarchive  to docker volume  

### docker-compose.yml - YAML file to configure our application’s services :  

#### Service database management system to store and manage the data for our site: mysql 
```
db:
    image: mysql:${MYSQL_VERSION:-latest}
    container_name: db
    restart: always
    env_file: .env
    volumes: 
      - dbdata:/var/lib/mysql
    command: '--default-authentication-plugin=mysql_native_password'
    networks:
      - wp_network
```
#### Service PHP-FPM is an implementation of Fast-CGI for PHP with improved capabilities around process management, logging, and high traffic situations:
```
php-fpm:
    build: 
      context: ./php
      dockerfile: Dockerfile
      args:
        - PHP_VERSION=${PHP_VERSION:-php:7.4-fpm}      
    container_name: php-fpm    
    volumes:
      - ${wp_volume}:/var/www/html 
    depends_on:
      - db
    networks:
      - wp_network
    restart: always
```
#### Service nginx:  send requests for .php routes to PHP-FPM to serve the page.
```
nginx:
    depends_on:
      - php-fpm
    image: nginx:${NGINX_VERSION:-latest}
    container_name: nginx
    restart: always
    ports:
      - "8082:80"
    volumes:
      - ${wp_volume}:/var/www/html      
      - ./nginx-conf/nginx.conf:/etc/nginx/conf.d/default.conf
    networks:
      - wp_network
    links:
      - php-fpm
```