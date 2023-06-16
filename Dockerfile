# FROM node:19.7.0-alpine 
# WORKDIR /app
# COPY package.json /app/
# RUN npm install
# COPY . /app/
# EXPOSE 3000
# CMD [ "npm", "start" ]
FROM node:19.7.0-alpine as Build
WORKDIR /app
COPY package.json /app/
RUN npm install
COPY . /app/
CMD npm run build

FROM nginx as production
WORKDIR /app
COPY --from=Build /app/build /usr/share/nginx/html/
