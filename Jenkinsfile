pipeline {
    agent {
        node {
            label 'maven'
        }
    }

    environment {
        PATH = "/opt/apache-maven-3.9.9/bin:$PATH"
    }

    stages {

        stage('Build') {
            steps {
                echo "-------------------------Build STARTED---------------------------------------"
                sh 'mvn clean deploy -Dmaven.test.skip=true'
                echo "-------------------------Build Completed---------------------------------------"
            }
        }
        stage("test"){
            steps{
                echo "-------------------------UNIT TEST STARTED---------------------------------------"
                sh 'mvn surefire-report:report'
                echo "-------------------------UNIT TEST Completd plz---------------------------------------"
            }
        }

        stage('SonarQube analysis') {
            environment {
                scannerHome = tool 'valaxy-sonar-scanner'
            }
            steps {
                withSonarQubeEnv('valaxy-sonarqube-server') {
                    sh "${scannerHome}/bin/sonar-scanner"
                }
            }
        }

    }
}

