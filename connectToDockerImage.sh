CONTAINER_ID=$1

if [[ "$CONTAINER_ID" == "" ]]; then
  # if no id given simply just connect to the first running container
  CONTAINER_ID=$(docker ps | grep -Eo "^[0-9a-z]{8,}\b")
fi

# start an interactive bash inside the container
# note some containers don't have bash, then try: ash (alpine), or simply sh
# the -l at the end stands for login shell that reads profile files (read man)
docker exec -i $CONTAINER_ID bash -l