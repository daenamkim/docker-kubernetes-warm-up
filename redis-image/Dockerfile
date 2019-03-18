# Use an existing docker image as a base
FROM alpine

# Download and install a dependency
# Change orders below, it cannot use image cached
RUN apk add --update gcc
RUN apk add --update redis

# Tell the image what todo when it starts
# as a container
CMD ["redis-server"]

# docker build -t daenamkim/redis:latest .
# docker run daenamkim/redis

# If you want to use a snapshot from the container created by manual commands
# docker run -it alpine sh
# apk add --update gcc
# apk add --update redis
# Open a new terminal
# docker commit -c 'CMD ["redis-server"]' CONTAINER_ID daenamkim/redis:latest
# docker run daenamkim/redis
