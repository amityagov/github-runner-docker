# GitHub Actions Runner docker image

**:warning::warning::warning: Use with caution, this is just an experiment :warning::warning::warning:**
---------

Run github actions runner in docker.

**Ubuntu** docker image used.
Created with **actions-runner-linux-x64-2.165.2.tar.gz** release

See [https://github.com/actions/runner/releases](https://github.com/actions/runner/releases) for more info.

## Usage

### Build

docker build . -t my_runner --build-arg REPOSITORY_URL=https://your_repo_url --build-arg TOKEN=token --build-arg RUNNER_NAME=my_repo_runner

### Run

docker run -d --name my_runner my_runner:latest
