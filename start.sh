docker run --rm -v /var/run/docker.sock:/var/run/docker.sock --name jad vladimirbuskin/jad \
  java -jar agent.jar -jnlpUrl http://<jenkins-host>/computer/<jenkins-agent-name>/jenkins-agent.jnlp -secret <jenkins-secret> -workDir "/var/jenkins"
