#!groovy
pipeline { 
   agent any   
   options{
      //Time display
      timestamps()
   }
   stages {
      // stage('Git') {
      //       steps {
      //           echo '> Checking out the Git version control ...'
      //           checkout scm
      //       }
      //   }
      stage('Git clone config files for development') {
         steps {
            cleanWs()               
               // Get code from a GitHub repository
            git 'https://github.com/ausard/EP_tsk2.git'                                    
         }
      }
      stage('Get latest version of Wordpress'){
         steps{
               sh "chmod +x install.sh"
               sh label: 'Get Wordpress', script: "./install.sh"
         }         
      }
          
   }
   post{
      success{  
         sh "docker-compose build"
         sh "docker-compose up -d"
      }
   }      
}   
