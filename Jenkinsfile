pipeline {
  agent {
  docker { 
            image 'google/cloud-sdk:latest'
            args '-u root:root'
        }
        }
  
  stages {
    stage('Hello') {
      steps {
        sh 'gsutil --version'            
      }
    }
  }
  post {
        always {
        	cleanWs deleteDirs: true
        }
    }
}
