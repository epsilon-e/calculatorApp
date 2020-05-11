  
pipeline {
    agent any  
    stages {
        stage('SCM Checkout'){
            steps {
            git credentialsId: 'githubCred', url: 'https://github.com/epsilon-e/calculatorApp.git'
            }
        }
        
        stage('Clean and Compile') { 
            steps {
            	
            	sh 'mvn clean compile'
            	
            }
        }
		 stage('Testing Stage  ') { 
            steps {
            	
            	sh 'mvn test'
            	
            }
        }
        stage('Package in JAR') { 
            steps {
            	
                sh "mvn package"
              
            }  
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