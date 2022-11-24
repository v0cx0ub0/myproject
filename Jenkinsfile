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
      if [ -d /var/lib/jenkins/workspace/*/"$newfile1" ]
      then
	      echo "File is found"
	      rm -r /var/lib/jenkins/workspace/*/"$newfile1"
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
