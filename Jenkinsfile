pipeline {
  agent {
  docker { 
            image 'gcr.io/google.com/cloudsdktool/google-cloud-cli:latest'
            args '-u root:root'
        }
        }
  
  stages {
    stage('Hello') {
      steps {
        sh 'gsutil --version' 
        sh '''
            cd 
            uname
            whoami
            pwd
            yum --version
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
