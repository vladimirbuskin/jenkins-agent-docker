FROM openjdk:11
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
# install docker
RUN apt-get update \
    && apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release \
    && echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
       $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null \
    && curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg \
    && apt-get update \
    && apt-get install -y docker-ce docker-ce-cli containerd.io
# this kind of string we are waiting to run
# take this from jenkins when create node
#CMD ["java", "-jar agent.jar -jnlpUrl http://<jenkins-host-here>/computer/<agent-name-here>/jenkins-agent.jnlp -secret <secret-here> -workDir \"/var/jenkins\""]
