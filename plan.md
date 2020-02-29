Основная цель задачи - развернуть сайт WordPress в виде мультиконтейнерного приложения.  
Решение должно соответствовать следующим требованиям:
    1. Три отдельных контейнера должны использоваться для следующих услуг:
        ◦ NGINX
        ◦ PHP-FRM
        ◦ MYSQL
    2. Файлы базы данных и содержимое сайта должны быть постоянными, т.е. сохранять данные сайта, если соответствующий контейнер удален, и повторно использовать после запуска нового контейнера.
    3. Файлы конфигурации для перечисленных сервисов и сайта WordPress должны храниться в репозитории Git. Если файлы в репо обновляются, соответствующие контейнеры должны обновляться автоматически с новой конфигурацией.
    4. Docker Compose должен использоваться для сборки и запуска упомянутых контейнеров.
    5. Jenkins рекомендуется использовать для автоматизации развертывания приложения. В качестве альтернативы можно использовать любой другой инструмент CI / CD по вашему выбору.
Следующие две работы должны быть созданы:
        а. Задание по развертыванию сайта WordPress с последней версией WordPress.
        б. Задание для обновления контейнеров после внесения изменений в конфигурацию.
    6. Для автоматизации могут использоваться скрипты Ansible или Bash.
В качестве дополнительной мили, после выполнения задачи в соответствии с перечисленными выше пунктами, вы можете изменить решение, используя чистый Ansible вместо Docker Compose.
----------------------------------------

2 репозитория в одном все файлы настройки 
        
в другом 


1. развернуть 3 образа приложения на локaльной машине : все конфиги сделать с волумами

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

