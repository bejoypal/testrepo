pipeline {
    agent any 

    triggers {
        pollSCM('* * * * *')
    }
    // Got permission denied while trying to connect to the Docker daemon socket at unix.
    // sudo usermod -a -G docker jenkins
    // restart jenkins server ->  sudo service jenkins restart
    stages {
         
        stage('Docker Build') {
            steps {
                echo '----------------- This is a build docker image phase ----------'
                sh '''
                    docker image build -t hotelproj-frontend-2 .
                '''
            }
        }

        stage('Docker Deploy') {
            steps {
                echo '----------------- This is a docker deploment phase ----------'
                sh '''
                 (if  [ $(docker ps -a | grep hotelproj-frontend-2 | cut -d " " -f1) ]; then \
                        echo $(docker rm -f hotelproj-frontend-2); \
                        echo "---------------- successfully removed ecom-webservice ----------------"
                     else \
                    echo OK; \
                 fi;);
            docker container run --restart always --name hotelproj-frontend-2 --network=host hotelproj-frontend-2
            '''
            }
        }
 
    }
}
