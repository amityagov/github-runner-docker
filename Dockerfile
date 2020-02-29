FROM ubuntu

ARG REPOSITORY_URL
ARG TOKEN
ARG RUNNER_NAME

RUN apt-get update && apt-get install -y ca-certificates git curl
RUN adduser --disabled-password --gecos "" github-runner
WORKDIR /home/github-runner

USER github-runner
RUN curl -O -L https://github.com/actions/runner/releases/download/v2.165.2/actions-runner-linux-x64-2.165.2.tar.gz
RUN tar xzf ./actions-runner-linux-x64-2.165.2.tar.gz
RUN rm ./actions-runner-linux-x64-2.165.2.tar.gz

USER root
RUN ./bin/installdependencies.sh
RUN update-ca-certificates

USER github-runner
RUN ./config.sh --url ${REPOSITORY_URL} --token ${TOKEN} --name ${RUNNER_NAME}
CMD ./run.sh
