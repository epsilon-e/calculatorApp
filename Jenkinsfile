  
pipeline {
    agent any  
     def mvnHome =tool name: 'Maven-3', type: 'maven'
     def mvnCMD ="${mvnHome}/bin/mvn"
    stages {
        stage('SCM Checkout'){
            steps {
            git credentialsId: 'githubCred', url: 'https://github.com/epsilon-e/calculatorApp.git'
            }
        }
        
      stage("maven clean & compile"){
       
        sh "${mvnCMD} clean package"
    }  
  
        stage('Build Image') {
      		steps {
        		script {
          			dockerImage = user/local/bin/docker.build("epsilon007/calculator_app" + ":latest")
        		}
      		}
    	}
    	
    	
    }
}