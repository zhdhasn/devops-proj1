pipeline {
    
    agent any
    stages {
        stage ('Check Git') {
            steps {
                sh 'echo "Checking GIT Repo"'
            }
        }
        stage ('GIT Fetch') {
            steps {
                git branch: 'main', url: 'https://github.com/zhdhasn/cicd.git'
            }
        }
        stage ('build docker image'){
            steps {
                sh 'docker build -t iamjahid/docker-proj1:latest .'
            }
        }
        stage ('push docker image'){
            steps {
               withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')])  {
               sh "docker login -u iamjahid -p ${dockerhubpwd}"
               }
               sh 'docker push iamjahid/docker-proj1:latest'
            }
            
        }
   }
}
