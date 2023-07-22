FROM node:19.7.0-alpine as build
WORKDIR /app
COPY . /app
RUN npm install
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]

FROM node:lts as production
WORKDIR /home/node/app
COPY package*.json ./
RUN npm install --production
COPY --chown=node:node . .
RUN npm run build

FROM nginx:stable-alpine as deploy
WORKDIR /usr/share/nnginx/html
COPY --from=production /home/node/app/build .