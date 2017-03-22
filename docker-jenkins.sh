#!/bin/bash
mkdir jenkins2-docker
cd jenkins2-docker
echo "FROM jenkinsci/jenkins:latest
USER root
RUN mkdir /var/log/jenkins
RUN mkdir /var/cache/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
RUN chown -R jenkins:jenkins /var/cache/jenkins
USER jenkins
ENV JAVA_OPTS=\"-Xmx8192m\"
" >> Dockerfile

echo "FROM debian:jessie

# Create the jenkins user
RUN useradd -d \"/var/jenkins_home\" -u 1000 -m -s /bin/bash jenkins

# Create the folders and volume mount points
RUN mkdir -p /var/log/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
VOLUME [\"/var/log/jenkins\", \"/var/jenkins_home\"]

USER jenkins
CMD [\"echo\", \"Data container for Jenkins\"]
" >> Dockerfile-data

docker build -t jenkins-data -f Dockerfile-data .

docker build -t jenkins2 .

docker run --name=jenkins-data jenkins-data

docker run -p 8080:8080 -p 50000:50000 --name=jenkins-master --volumes-from=jenkins-data -d jenkins2

echo ""
echo ""
echo "################################"
echo "# browse: http://localhost:8080 "
echo "# enter password:               "
sleep 2
echo "################################" 
echo "################################" 
echo ""
docker exec jenkins-master cat /var/jenkins_home/secrets/initialAdminPassword
echo ""
echo "################################" 
echo "################################" 
