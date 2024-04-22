pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE_NAME = 'app-backend'
        GITHUB_REPO_URL = 'https://github.com/SHASHI4368/4368-Gurunayake.git'
    }
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: "${env.GITHUB_REPO_URL}"
            }
        }
        
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t ${env.DOCKER_IMAGE_NAME} .'
            }
        }
        
        stage('Run Docker Image') {
            steps {
                bat 'docker run -p 8080:8080 -d ${env.DOCKER_IMAGE_NAME}'
            }
        }
    }
}
