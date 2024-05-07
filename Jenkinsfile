pipeline {
    agent any

    stages {
        stage('Build and Push to Dev Repo') {
            when {
                branch 'dev'
            }
            steps {
                script {
                    docker.build("dev:latest")
                    docker.withRegistry('https://hub.docker.com/repository/docker/989407/dev', 'dockerhub-credentials') {
                        docker.image("dev:latest").push()
                    }
                }
            }
        }

        stage('Build and Push to Prod Repo') {
            when {
                branch 'master'
            }
            steps {
                script {
                    docker.build("prod:latest")
                    docker.withRegistry('https://hub.docker.com/repository/docker/989407/prod', 'dockerhub-credentials') {
                        docker.image("prod:latest").push()
                    }
                }
            }
        }
    }
}
