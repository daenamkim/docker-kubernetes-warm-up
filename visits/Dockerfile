FROM node:alpine

WORKDIR '/app'

COPY package.json .
RUN npm install -g yarn
RUN yarn
COPY . .

CMD ["yarn", "start"]
