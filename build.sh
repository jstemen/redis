set -ex
# SET THE FOLLOWING VARIABLES
# docker hub username
USERNAME=jstemen
# image name
IMAGE=redis
docker build -t $USERNAME/$IMAGE:latest .
