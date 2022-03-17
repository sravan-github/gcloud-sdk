pipeline {
  agent {
  docker { 
            image 'camil/gsutil:latest'
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
