pipeline {
  agent {
  docker { 
            image 'ustcmirror/gsutil-rsync:latest'
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
