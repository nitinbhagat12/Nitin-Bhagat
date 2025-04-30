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
                    bat 'docker rm -f nitin-container || true'
                    bat 'docker run -d -p 8081:80 --name nitin-container nitin-portfolio'

                }
            }
        }
    }
}
