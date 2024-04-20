FROM jenkins/jenkins:2.440.2-jdk17
USER root
RUN apt-get update && apt-get install -y lsb-release
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
  https://download.docker.com/linux/debian/gpg
RUN echo "deb [arch=$(dpkg --print-architecture) \
  signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker-ce-cli
USER jenkins
RUN jenkins-plugin-cli --plugins "blueocean docker-workflow"

# docker network create jenkins

# docker build -t huynhtrancntt/jenkins:1.0.0 .


# docker run --name jenkins-blueocean --restart=on-failure --detach \
#   --network jenkins --env DOCKER_HOST=tcp://docker:2376 \
#   --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1 \
#   --publish 8088:8080 --publish 50000:50000 \
#   --volume ./jenkins-data:/var/jenkins_home \
#   --volume ./jenkins-docker-certs:/certs/client:ro \
#   huynhtrancntt/jenkins:1.0.0


# docker exec f77c330587d2  cat /var/jenkins_home/secrets/initialAdminPassword


# https://a45e-27-68-161-7.ngrok-free.app/github-webhook/
