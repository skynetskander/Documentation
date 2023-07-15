pipeline {
    agent any
    
    tools {
        
        nodejs 'nodejs'
        dockerTool 'docker'
    }

    environment {
        imageName = "myapp"
        registryCredentials = "Nexus"
        registry = "172.21.0.3:8085"
        dockerImage = ''
    }

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/skynetskander/Documentation.git'
            }
        }

        stage('install dependency') {
            steps {
                sh 'npm install'
                sh 'ls'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
        stage('dockerize the app') {
            steps {
           //   sh 'docker build -t doc:v1 .'
              sh ' echo hi'
            }
        }
        stage('sonrqube'){
            agent { 
                docker { 
                    image 'sonarsource/sonar-scanner-cli' 
                    args '-v //var/run/docker.sock:/var/run/docker.sock --network docker-compose_default'

                } 
            }
            steps{
                 git branch: 'main', url: 'https://github.com/skynetskander/Documentation.git'
                sh 'ls'
                //   sh 'sonar-scanner -Dsonar.projectKey=Docs -Dsonar.sources=. -Dsonar.host.url=http://172.21.0.5:9000  -Dsonar.login=admin -Dsonar.password=sonar'
             
            
                }
            
        }


     
        stage('Uploading to Nexus') {
            steps {
                sh 'ls'
                    sh 'docker login localhost:8085 -u admin -p admin'
                    sh 'docker tag doc:v1 localhost:8085/docu:v1'
                    sh 'docker push localhost:8085/docu:v1'
           
            }
 
        }
        
        stage('install docker in the ec2 instnance with ansible') {
             agent { 
                docker { 
                    image 'cytopia/ansible:2.9-infra' 
                    args '-v //var/run/docker.sock:/var/run/docker.sock --network docker-compose_default' 
                } 
            }
            steps {
                    withCredentials([file(credentialsId: 'ec2', variable: 'key')]) {
                        
                        sh '''
                        
                        cat hosts
                        ls
                        cat ${key} > go.pem
                        chmod 400 go.pem
                        ssh  -o StrictHostKeyChecking=no -i "go.pem" ubuntu@ec2-16-171-168-134.eu-north-1.compute.amazonaws.com "echo \'Hello, World!\' > tdest.txt"
                        ansible-playbook --user=ubuntu  --private-key=go.pem ansibleplaybook.yml -i hosts
                        '''
                   }
                    
            }
 
        }
 }
}