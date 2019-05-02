FROM node:alphine as builder
# run as "builder" phase
WORKDIR '/app'
COPY package.json .
RUN npm install -g yarn
RUN yarn
COPY . .
RUN yarn build

FROM nginx
# copy from /app/build of "builder" phase
COPY --from=builder /app/build /usr/share/nginx/html
