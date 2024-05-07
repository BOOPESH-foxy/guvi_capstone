node {   
    stage('Clone repository') {
        git credentialsId: 'git', url: 'https://github.com/BOOPESH-foxy/guvi_capstone'
    }
    
    stage('Build image') {
       dockerImage = docker.build(" 989407/dev:latest")
    }
    
 stage('Push image') {
        withDockerRegistry([ credentialsId: "dockerhub-credentials", url: "https://hub.docker.com/repository/docker/989407/dev/" ]) {
        dockerImage.push()
        }
    }    
}
