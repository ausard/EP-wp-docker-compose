#!groovy
pipeline { 
   agent any   
   options{
      //Time display
      timestamps()
   }
   stages {
      stage('Git clone config files for development') {
         steps {
               // cleanWs()               
               // Get code from a GitHub repository
            sh "rm -rf /wordpress/*"
            dir("/tmp/wp"){
               sh "rm -rf *"
               git 'https://github.com/ausard/EP_tsk2.git'                                    
            }            
         }
      }
      stage('Get latest version of Wordpress'){
         steps{
            dir("/tmp/wp"){
               sh "chmod +x install.sh"               
               sh label: 'Get Wordpress', script: "./install.sh"
            }               
         }         
      }
      stage('Build images for docker'){
         steps{
            dir("/tmp/wp"){
               sh "chmod +x remove_old_containers.sh"
               sh label: 'Stop and remove old containers', script: "./remove_old_containers.sh"
               sh "docker-compose build"
            }               
         }         
      }
      stage('Up and run the containers'){
         steps{
            dir("/tmp/wp"){           
               sh label: "Up and run the containers", script: "docker-compose up -d"
            }                 
         }         
      }                   
   }
   post{
      success{  
          echo "Open your browser at http://localhost:8081/"
      }
   }      
}   
