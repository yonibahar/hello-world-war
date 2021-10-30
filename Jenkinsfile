pipeline {
  agent {
    node {
      label 'docker-vm'
    }

  }
  stages {
    stage('Checkout') {
      steps {
        git(url: 'https://github.com/yonibahar/hello-world-war.git', branch: 'master', changelog: true)
      }
    }

    stage('Maven Compile') {
      steps {
        sh '''cd hello-world-war_master
mvn compile'''
      }
    }

  }
}