# jenkins-agent-docker

To start jenkins agent

```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock --name jba jba \
  java -jar agent.jar -jnlpUrl http://<jenkins-host>/computer/<jenkins-agent-name>/jenkins-agent.jnlp -secret <jenkins-secret> -workDir "/var/jenkins"
```

You can take this "java -jar..." string from Jenkins itself after making jenkins agent.
