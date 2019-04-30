# /app/node_modules: use it only in the container
# $(PWD):/app: directory will be refered by the container
# docker runp 3000:3000 -v /app/node_modules -v $(PWD):/app IMAGE_ID
docker runp 3000:3000 -v /app/node_modules -v $(PWD):/app
