pipeline {
    agent any

    stages {
        stage ("git checkout the code"){
            steps{
                git branch: 'main', credentialsId: 'GitHub', url: 'https://github.com/aakumar123/JRK_devops2aws.git'
            }
        }

        stage ("code compile"){
            steps{
                sh "mvn clean compile"
            }
        }
    }
}
