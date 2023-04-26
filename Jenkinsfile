pipeline {
    agent any
    environment {
        AWS_DEFAULT_REGION='us-west-2'
        AWS_SECRET_ACCESS_KEY=credentials('my-aws-secret-access-key')
        AWS_ACCESS_KEY_ID=credentials('my-aws-access-key-id')
    }
    stages {
        stage('Terraform Check') {
            steps {
                dir('cluster_eks') {
                    sh 'terraform init'
                    sh 'terraform plan'
                }
            }
        }
        stage('Cluster deployment') {
            steps {
                dir('cluster_eks'){
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}