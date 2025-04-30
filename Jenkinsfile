pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/nitinbhagat12/Nitin-Bhagat.git'
            }
        }

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
                    // Stop old container if running
                    sh 'docker rm -f nitin-container || true'
                    // Run new container
                    sh 'docker run -d -p 8080:80 --name nitin-container nitin-portfolio'
                }
            }
        }
    }
}
