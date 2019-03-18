# Specify a base image
FROM node:alpine

WORKDIR /usr/app

# Install some dependencies
RUN npm install -g yarn
# Copy contents in build location to container's
COPY ./package.json ./
RUN yarn install
COPY ./ ./

# Default command
CMD ["yarn", "start"]
