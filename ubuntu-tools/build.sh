#/bin/bash

echo "Building test environment"

docker build -t localhost/docker-test .

echo "Running the container interactively"

docker run -it localhost/docker-test bash
