pipeline {
    agent any

    tools {
        maven 'maven3'
    }

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

        stage ("code package"){
            steps{
                sh "mvn clean package"
            }
        }

        stage ("backup deploy to nexus"){
            steps{
                configFileProvider([configFile(fileId: '3dbade54-9388-499a-a4c0-1628019c3d60', variable: 'mavensettings')]) {
                  sh "mvn -s $mavensettings clean deploy -DskipTest=true"
             }
            }
        }

 }
}
