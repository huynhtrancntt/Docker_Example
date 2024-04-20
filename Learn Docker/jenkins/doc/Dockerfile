FROM jenkins/jenkins:lts

USER root

# Cài đặt Docker
RUN apt-get update && \
    apt-get -y install apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg && \
    echo \
    "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
    $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null && \
    apt-get update && \
    apt-get -y install docker-ce docker-ce-cli containerd.io && \
    usermod -aG docker jenkins

USER jenkins



# docker run -d --name my-jenkins \
#            -e DOCKER_HOST=tcp://127.0.0.1:2375 \
#            -p 8088:8080 \
#           huynhtrancntt/jenkins:1.0.0 
