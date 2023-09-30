#!groovy
pipeline {
    // 'agent' here tells the program where to execute. 
    // 'any' in this case means it should execute on any available 
    // jenkins agent
    agent any

    stages{
        /*
        stage("Preliminary") {
            steps {
                // Here, we prepare the environment
                echo 'shutting down running containers if any'
                docker-compose -f docker_compose.yaml down
                echo 'Removing last image created'
                docker rmi app_web:1.0
            }
        }
        */

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
                // Start building stage
                echo 'Building app just commenced ...'
                // Build my docker image called app_web, version 1.0
                sh 'docker build -t app_web:1.0 .'
                sh "ls"
                echo 'Build complete...'
                
                
                
            }
        }
        /*
        stage("test") {
            steps {
                echo 'Testing the app...'
                echo 'Starting up a container from image just created'
                sh "docker run -d -p8091:80 --name webserver app_web:1.0"
                echo 'Checking to see if webserver is up and running...'
                sh "curl be.ng:8091/reviews.html"

                // shutdown and remove container 'webserver'
				// later I'd see how to put all of these in groovy script/shell script
				// in order to declutter this Jekinsfile
                echo 'Shutting down and removing webserver'
                sh "docker stop webserver"
                sh "docker rm webserver"				
            }
        }
        stage("deploy") {
            steps {
                // Create and startup the containers/services
                // defined in the docker_compose.yaml file
                echo 'deploying the app ..'
                sh "docker-compose -f docker_compose.yaml up"
                echo 'Up and running. Run .sql file in db server and point your browser to be.ng:8090/reviews.html'
            }
        }
        */
    }
		/*

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
		*/
}
