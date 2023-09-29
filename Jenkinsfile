pipeline {
    // 'agent' here tells the program where to execute. 
    // 'any' in this case means it should execute on any available 
    // jenkins agent
    agent any

    stages{
        stage("build") {
            steps {
                // Build my docker image called web, version 1.0
                // bash 'docker build -t web:1.0 -f Dockerfile'
                // bash 'docker run -d -p8091:80 --name webserver web:1.0'
                
                echo 'building app ...'
            }
        }
    }

    stages{
        stage("test") {
            steps {
                echo 'testing the app...'
                // bash 'curl be.ng:8091/review.html'
            }
        }
    }

    stages{
        stage("deploy") {
            steps {
                // Create and startup the containers/services
                // defined in the docker_compose.yaml file
                // bash 'docker-compose -f docker_compose.yaml up'
                echo 'deploying the app ..'
            }
        }
    }
}
