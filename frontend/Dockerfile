FROM node:alpine as builder
# run as "builder" phase
WORKDIR '/app'
COPY package.json ./
RUN npm install -g yarn
RUN yarn
COPY ./ ./
RUN yarn build

FROM nginx
EXPOSE 80
# copy from /app/build of "builder" phase
# "builder" phase will be dumped after running
COPY --from=builder /app/build /usr/share/nginx/html
