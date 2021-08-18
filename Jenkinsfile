pipeline {
  agent {
    node {
      label 'Build'
    }

  }
  stages {
    stage('Build') {
      parallel {
        stage('DB Unit') {
          steps {
            echo 'DBUnit'
          }
        }

        stage('J Unit') {
          steps {
            echo 'JUNIT'
          }
        }

      }
    }

    stage('Dev') {
      steps {
        echo 'Dev'
      }
    }

    stage('Staging') {
      steps {
        echo 'Staging'
      }
    }

    stage('Production') {
      steps {
        echo 'Production'
      }
    }

  }
}