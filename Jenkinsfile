pipeline {
  agent {
  docker { 
            image 'docker pull google/cloud-sdk:latest'
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
