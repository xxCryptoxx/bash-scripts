pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'test 1'
      }
    }

    stage('Test') {
      steps {
        echo 'test 2'
      }
    }

    stage('Production') {
      steps {
        echo 'test 3'
      }
    }

  }
  environment {
    Build = 'null'
  }
}