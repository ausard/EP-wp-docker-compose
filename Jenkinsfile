#!groovy
pipeline { 
   agent any   
   options{
      //Time display
      timestamps()
   }
   stages {
      stage('Git clone project') {
         steps {
            //Delete Workspace before build project
            cleanWs()
            // Get code from a GitHub repository
             git 'https://github.com/ausard/EP_tsk2.git'
            
         }
      }
      stage('Get latest version of Wordpress'){
         steps{
            sh label: 'Get Wordpress', script: "install.sh"
         }
      }    
      stage('Start up our wordpress development'){
         steps{
            sh label: 'Stra', script: "docker-compose up --force-recreate --build"
         }         
      }      
   }
}   
