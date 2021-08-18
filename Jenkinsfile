pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'test 1'
      }
    }

    stage('Test') {
      parallel {
        stage('Test') {
          steps {
            echo 'test 2'
          }
        }

        stage('JUnit') {
          steps {
            echo 'test 4'
          }
        }

        stage('DBUnit') {
          steps {
            echo 'test 5'
          }
        }

      }
    }

    stage('Production') {
      steps {
        echo 'test 3'
      }
    }

  }
}