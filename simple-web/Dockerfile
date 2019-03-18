# Specify a base image
FROM node:alpine

WORKDIR /usr/app

# Install some dependencies
RUN npm install -g yarn
# Copy contents in build location to container's
COPY ./ ./
RUN yarn install

# Default command
CMD ["yarn", "start"]
