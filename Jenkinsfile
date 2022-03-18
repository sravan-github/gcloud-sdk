pipeline {
  agent {
  docker { 
            image 'sravangcpdocker/gcpcli:8'
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
