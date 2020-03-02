---

2 репозитория в одном все файлы настройки 

в другом 


1. развернуть 3 образа приложения на локaльной машине : все конфиги сделать 

2. vagrantfile - в нем установка докер, с помощью ансибл и поднятие этих же контейнеров 


4. установка дженкинс из предыдущего таска + 

5. в дженкинс - джоба с файлом дженкинс 
который забирает все докерфайлы и конфиги с гита
поднимает докер контейнеры

6. 




# https://www.howtoforge.com/tutorial/dockerizing-wordpress-with-nginx-and-php-fpm/


This practical task is aimed to get an idea about Docker and to get hands-on experience with Docker and Docker Compose.

The main goal of the task is to deploy a WordPress site as a multi-container application. The solution should meet the following requirements:

1. Three separate containers should be used for the following services:

· NGINX

· PHP-FRM

· MYSQL

2. Database files and site content should be persistent, i.e. keep the site data if the corresponding container is deleted and be reused once the new container is started.

3. Configuration files for the listed services and the WordPress site should be stored in a Git repository. If the files in the repo are updated, the corresponding containers should be updated automatically with the new configuration.

4. Docker Compose should be utilized to build up and run the mentioned containers.

5. Jenkins is recommended to be used to automate the application deployment. Alternatively, any other CI/CD tool of your choice can be used.

The following two jobs should be set up:

a. Job to deploy the WordPress site with the latest WordPress version.

b. Job to update the containers once any configuration changes are committed.

6. Ansible or Bash scripting can be used for automation.

As an extra mile, after the task is completed according to the listed above points, you may want to alter the solution by using pure Ansible instead of Docker Compose.

A brief description of the working environment and the required tools is given in the following table.

Environment description

