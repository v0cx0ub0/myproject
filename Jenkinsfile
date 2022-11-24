pipeline {
  agent any
  options {
    checkoutToSubdirectory("codeBase")
  }
  stages{
    stage('git clone') {
    steps {
      sh 'rm -r /var/lib/jenkins/workspace/project-1/*'
      dir("codeBase") {
        sh 'git clone https://github.com/v0cx0ub0/myproject.git'
        
        }   
      }
    }
    stage('Dockerfile build') {
    steps {
      dir("codeBase") {
        sh 'docker build -t myproject:v1 myproject/.'
        }   
      }
    }
    stage('Dockerfile image run') {
    steps {
      dir("codeBase") {
        sh 'myproject/script.sh 4200 '
        sh 'docker run -d -p 4200:3000 myproject:v1'
        }   
      }
    }
  }
}
