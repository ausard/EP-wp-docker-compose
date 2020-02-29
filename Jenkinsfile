#!groovy
pipeline { 
   agent any   
   options{
      //Time display
      timestamps()
   }
   stages {
      stage('Git') {
            steps {
                echo '> Checking out the Git version control ...'
                checkout scm
            }
        }
      stage('Git clone config files for development') {
         steps {
            dir("/wordpress"){
               sh "rm -rf ."
               // Get code from a GitHub repository
               git 'https://github.com/ausard/EP_tsk2.git'   
            }                     
         }
      }
      stage('Get latest version of Wordpress'){
         steps{
            dir("/wordpress"){
               sh "chmod +x install.sh"
               sh label: 'Get Wordpress', script: "./install.sh"
            }
            
         }         
      }
          
   }
   post{
             success{  
                dir("/wordpress"){
                  sh "docker-compose build"
                  sh "docker-compose up -d"
                }                           
             }
         }      
}   
