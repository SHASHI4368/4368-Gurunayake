pipeline {
    agent any
    
    environment {
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
                bat 'docker build -t app-backend .'
            }
        }
        
        stage('Run Docker Image') {
            steps {
                bat 'docker run -p 5000:5000 app-backend'
            }
        }
    }

    post {
        always {
            echo 'Cleaning up docker containers'
            bat 'docker stop app-backend'
            bat 'docker rm app-backend'
        }
    }
}
