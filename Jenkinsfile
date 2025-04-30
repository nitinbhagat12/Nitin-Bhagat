pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('nitin-portfolio')
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    sh 'docker rm -f nitin-container || true'
                    sh 'docker run -d -p 8080:80 --name nitin-container nitin-portfolio'
                }
            }
        }
    }
}
