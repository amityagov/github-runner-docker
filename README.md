# GitHub Actions Runner docker image

**Use with caution, this is just experiment**

Run github actions runner in docker.

**Ubuntu** docker image used.
Created with actions-runner-linux-x64-2.165.2.tar.gz release

See [https://github.com/actions/runner/releases](https://github.com/actions/runner/releases) for more info.

## Usage

### Build

docker build . -t my_runner --build-arg REPOSITORY_URL=https://your_repo_url --build-arg TOKEN=token --build-arg RUNNER_NAME=my_repo_runner

### Run

docker run -d --name my_runner -v /var/run/docker.sock:/var/run/docker.sock my_runner:latest
