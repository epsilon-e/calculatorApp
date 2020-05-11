  
pipeline {
    agent any  
    stages {
        stage('SCM Checkout'){
            steps {
            git credentialsId: 'githubCred', url: 'https://github.com/epsilon-e/calculatorApp.git'
            }
        }
        
      stage("maven clean & compile"){
        def mvnHome =tool name: 'Maven-3', type: 'maven'
        def mvnCMD ="${mvnHome}/bin/mvn"
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