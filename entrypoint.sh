#!/bin/bash

wget ${JENKINS_URL}/jnlpJars/agent.jar

java -jar agent.jar -jnlpUrl ${JNLPURL} -secret ${SECRET} -workDir ${WORKDIR}
