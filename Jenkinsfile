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
        stage('Build and Push to Dev Repo') {
            when {
                branch 'dev'
            }
            steps {
                script {
                    docker.build("dev:latest")
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub-credentials') {
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
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub-credentials') {
                        docker.image("prod:latest").push()
                    }
                }
            }
        }
    }
}

