pipeline {
  agent {
    node {
      label 'docker-vm'
    }

  }
  stages {
    stage('Checkout') {
      steps {
        git(url: 'https://github.com/yonibahar/hello-world-war.git', branch: 'dev', changelog: true)
      }
    }

    stage('Maven Compile') {
      steps {
        sh '''mvn compile
mvn clean package'''
      }
    }

    stage('SonarQube') {
      steps {
        sh 'mvn verify org.sonarsource.scanner.maven:sonar-maven-plugin:sonar -Dsonar.projectKey=yonibahar_hello-world-war -Dsonar.login=fca131fc7be8100043f4a9b5f038437b7da06cb8'
      }
    }

  }
}