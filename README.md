# jenkins-agent-docker

To start jenkins agent use expression below.
this image is using host docker service not "docker in docker", kind of not recommended what i read.
advantages are:
- container we start from CI-CD is lives even agent itself is not
- dont need to pass ports to docker-in-docker
- we share docker build cache between containers

```
docker run -d -v /var/run/docker.sock:/var/run/docker.sock --name jad jad \
  java -jar agent.jar -jnlpUrl http://<jenkins-host>/computer/<jenkins-agent-name>/jenkins-agent.jnlp -secret <jenkins-secret> -workDir "/var/jenkins"
```

You can take this string
```
java -jar agent.jar -jnlpUrl http://<jenkins-host>/computer/<jenkins-agent-name>/jenkins-agent.jnlp -secret <jenkins-secret> -workDir "/var/jenkins"
```
string from Jenkins itself after making jenkins agent.
