# Docker 

## what is docker




## How to Dockerize this documentation website

```Dockerfile
FROM node:19.7.0-alpine as Build
WORKDIR /app
COPY package.json /app/
RUN npm install
COPY . /app/
CMD [ "npm", "start" ]
```
