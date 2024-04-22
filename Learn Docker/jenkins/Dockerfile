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

# docker build -t huynhtrancntt/jenkins:blueocean .

# docker run -d \
#   --restart=always \
#   -p 127.0.0.1:2376:2375 \
#   --network jenkins \
#   -v //var/run/docker.sock:/var/run/docker.sock \
#   alpine/socat \
#   tcp-listen:2375,fork,reuseaddr unix-connect:/var/run/docker.sock


# docker run --name jenkins-blueocean --restart=on-failure --detach \
#   --network jenkins --env DOCKER_HOST=tcp://docker:2376 \
#   --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=0 \
#   --publish 8088:8080 --publish 50000:50000 \
#   --volume ./jenkins-data:/var/jenkins_home \
#   --volume ./jenkins-docker-certs:/certs/client:ro \
#   huynhtrancntt/jenkins:blueocean


# docker exec 971ea8e38f2f  cat /var/jenkins_home/secrets/initialAdminPassword

# docker inspect tender_lewin | grep IPAddress


# https://a45e-27-68-161-7.ngrok-free.app/github-webhook/
