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
        sh '''
            cd 
            whoami
            pwd
            '''
      }
    }
  }
  post {
        always {
        	cleanWs deleteDirs: true
        }
    }
}
