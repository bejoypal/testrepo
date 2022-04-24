pipeline {
    agent any 

    triggers {
        pollSCM('* * * * *')
    }
    // Got permission denied while trying to connect to the Docker daemon socket at unix.
    // sudo usermod -a -G docker jenkins
    // restart jenkins server ->  sudo service jenkins restart
    stages {
         
        stage('Copy to apache ') {
            steps {
                echo '----------------- This is a copy to apache ----------'
                sh '''
                    ls -ltr
                    whoami
                    sudo cp -r * /var/www/html
                '''
            }
        }
 
    }
}
