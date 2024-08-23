pipeline {
    agent any

    tools {
        maven 'maven3'
    }

    environment{
        SCANNER_HOME= /usr/bin 'sonar-server'
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

        stage ("code scan"){
            steps{
                withSonarQubeEnv('sonar-server') {
                  sh ''' $SCANNER_HOME/usr/bin/sonar-scanner -Dsonar.projectName=devops_maven_project \
                        -Dsonar.java.binaries=. \
                        -Dsonar.projectKey=devops_maven_project '''
            }

        }
    }  
 }
}
