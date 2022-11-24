pipeline {
  agent any
  options {
    checkoutToSubdirectory("codeBase")
  }
  stages{
    stage('git clone') {
    steps {
      sh '''#!/bin/bash
      newfile1=myproject
      if [ -d /var/lib/jenkins/workspace/multibranch_development/"$newfile1" ]
      then
	      echo "File is found"
	      rm -r /var/lib/jenkins/workspace/multibranch_development/"$newfile1"
      else
        echo "File is not found"
      fi'''
      dir("codeBase") {
        sh 'git clone https://github.com/v0cx0ub0/myproject.git'
        
        }   
      }
    }
    stage('Dockerfile build') {
    steps {
      dir("codeBase") {
        sh 'docker build -t myproject2:v1 myproject/.'
        }   
      }
    }
    stage('Dockerfile image run') {
    steps {
      dir("codeBase") {
        sh 'myproject/script.sh 4201 '
        sh 'docker run -d -p 4201:3000 myproject2:v1'
        }   
      }
    }
  }
}
