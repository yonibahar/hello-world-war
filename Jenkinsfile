pipeline {
  agent {
    node {
      label 'docker-vm'
    }

  }
  stages {
    stage('checkout') {
      steps {
        git(url: 'https://github.com/yonibahar/hello-world-war.git', branch: 'master', changelog: true)
      }
    }

  }
}