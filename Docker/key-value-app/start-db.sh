MONGODB_IMAGE="mongodb/mongodb-community-server"
MONGODB_TAG="7.0-ubuntu2204-slim"
CONTAINER_NAME="monogodb"

# Root credentials
ROOT_USER="root-user"
ROOT_PASSWORD="root-password"

docker run --rm -d --name $CONTAINER_NAME \
 -e MONGODB_INITDB_ROOT_USERNAME=$ROOT_USER \
 -e MONGODB_INITDB_ROOT_PASSWORD=$ROOT_PASSWORD \
 $MONGODB_IMAGE:$MONGODB_TAG
