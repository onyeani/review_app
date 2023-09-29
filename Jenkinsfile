pipeline {
    // 'agent' here tells the program where to execute. 
    // 'any' in this case means it should execute on any available 
    // jenkins agent
    agent any

    stages{
        stage("build") {
            /* We can also use conditionals. In this case, we only implement the build
             when we are on the main branch. BRANCH_NAME is an env var that is always avilable to jenkins
            when {
                expression {
                    BRANCH_NAME == 'main'
                }
            }
            */
            steps {
                // Build my docker image called web, version 1.0
                // bash 'docker build -t web:1.0 -f Dockerfile'
                // bash 'docker run -d -p8091:80 --name webserver web:1.0'
                
                echo 'building app ...'
            }
        }
        stage("test") {
            steps {
                echo 'testing the app...'
                // bash 'curl be.ng:8091/review.html'
								// shutdown and remove container 'webserver'
								// later I'd see how to put all of these in groovy script/shell script
								// in order to declutter this Jekinsfile
								// docker stop webserver
								// docker rm webserver

            }
        }
        stage("deploy") {
            steps {
                // Create and startup the containers/services
                // defined in the docker_compose.yaml file
                // bash 'docker-compose -f docker_compose.yaml up'
                echo 'deploying the app ..'
            }
        }
    }

    post {
        always {
            // This executes at all times. Regardless of the status of the build
        }
        success {
            // exeecutes a script here that runs upon successful completion of jenkinsfile
            echo 'build successful'
        }
        failure {
            // executes if build fails
            echo 'build failed'
        }
    }
}
