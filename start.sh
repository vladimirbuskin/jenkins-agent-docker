#docker rm -f jenkins-build-agent
#docker build . -t jenkins-build-agent
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock --name jba jba \
  java -jar agent.jar -jnlpUrl http://143.198.71.21:8080/computer/g14/jenkins-agent.jnlp -secret c75ef70a0f05d67a48e056c6619e4ead559a8d343bec822308361c6b585366b4 -workDir "/var/jenkins"
