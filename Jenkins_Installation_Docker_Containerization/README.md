Step1: Fetch the Jenkins latest image from
Open URL: https://hub.docker.com/
Explore > Search > Jenkins > Select Jenkins Official.
The official jenkins website uses (docker pull jenkins) which is deprecated so you can use the latest suggested on https://hub.docker.com/r/jenkins/jenkins

Step2: Login to the Centos7 server and become a root user.
#yum install git docker -y

Step 3: Run the Jenkins application in docker container
Document of Jenkins installation
https://github.com/jenkinsci/docker/blob/master/README.md

docker run -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk11

The jenkins is exposed in port 8080 and it is running in detach mode. The volume is binded to local disk to save the data for future use.

Step 4: Verify and launch jenkins
Check whether the docker container is running or not using below command
# docker ps

Jenkins default password will be present in the particular docker container logs. How to check the logs of the container. You can pull the container ID from the “docker ps” command output

#docker logs <containerID>
…
...
Jenkins initial setup is required. An admin user has been created and a password generated.
Please use the following password to proceed to installation:
e75a22a5d5e64cc2829d968a73fe9dbe
This may also be found at: /var/jenkins_home/secrets/initialAdminPassword
…
…

Open a web browser and run IP address:8080

It will ask for password, Copy and paste the password present in the docker logs
 
Then Click on the "Install suggested plugins" to install the suggested plugins
 
Add all the admin and password details and click submit

Click on the start using Jenkins



Enjoy !!!!
