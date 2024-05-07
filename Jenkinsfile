pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello'
            }
        }
    }
}
pipeline {
    agent any

    stages {
        stage(‘Build Docker’) {
            steps {
                sh ‘docker build -t capstone-image .’
                  }
            }
        }
}
