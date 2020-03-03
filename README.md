# DEPLOYING WORDPRESS AS A MULTI-CONTAINER APPLICATION USE DOCKER-COMPOSE FILE  

This repository contains configuration files for our multi-container application.  
Folders [nginx-conf](https://github.com/ausard/EP_tsk2/tree/master/nginx-conf), [php](https://github.com/ausard/EP_tsk2/tree/master/php) contains the config files of the respective containers.  
### Files
.env : file contains variables for docker-compose file

Jenkinsfile, Jenkinsfile_config : files for our pipeline jobs in Jenkins  

docker-compose.yml - YAML file to configure our application’s services  
install.sh - download latest version of wordpress and unarchive  to docker volume  
