pipeline {
    agent any
    tools {
        nodejs 'node'
        dockerTool 'docker'
    }

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/skynetskander/Documentation.git'
            }
        }

        stage('Install dependency') {
            steps {
                nodejs('node') {
                    npm 'install'
                }
            }
        }
        stage('SonarQube Analyzes') {
            steps {
                echo "Testing..."
                // Add test steps here
            }
        }
        stage('Docker Build') {
            steps {
                echo "Building..."
                sh 'docker build -t my-docker-image:v1 .'
            }
        }

stage('Uploading to Nexus') {
            steps {
                    sh 'docker login localhost:8085 -u admin -p admin'
                    sh 'docker tag my-docker-image:v1 172.18.0.3:8085/tag_image_v1:v1'
                    sh 'docker push localhost:8085/tag_image_v1:v1'
        
            }
        }

        
        stage('Deploy') {
            steps {
                echo "Deploying..."
                // Add deployment steps here
            }
        }
    }

    post {
        success {
            echo 'Pipeline succeeded!'
            // Additional actions to perform if the pipeline succeeds
        }

        failure {
            echo 'Pipeline failed!'
            // Additional actions to perform if the pipeline fails
        }
    }
}