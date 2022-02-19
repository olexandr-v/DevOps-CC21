# README

* Used modified Jenkins container, details view in the file ```./jenkins/Dockerfile```

* Run ```docker-compose up -d``` in ```./jenkins/``` directory to run Jenkins container

* After running Jenkins install ```Pipeline``` and ```Git``` plugins with all dependents.

* Add ssh key for repo and credentials to docker hub and AWS.

    ```jenkins-ssh```

    ```AWS_ACCESS_KEY_ID```

    ```AWS_SECRET_ACCESS_KEY```

    ```DOCKERHUB_USER```

    ```DOCKERHUB_TOKEN```

* In ```./jenkins/jobs``` contains Jenkins jobs, you can copy to your ```jenkins_home``` directory.

* ```./Jenkinsfile``` create all infrastructure.
