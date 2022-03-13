pipeline {
    agent {
        docker {
            image 'maven:3.8.1-adoptopenjdk-11' 
            args '-v /root/.m2:/root/.m2' 
        }
    }
    stages {
        stage('Build') { 
			environment {
                  HOME="."
                }
            steps {
                sh 'mvn -B -DskipTests clean package' 
            }
        }
    }
}