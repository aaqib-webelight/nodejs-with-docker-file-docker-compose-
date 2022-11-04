FROM node:16.13.1
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --only=production
COPY ./src ./src
COPY ./public ./public
COPY ./Images ./Images
EXPOSE 3000
CMD npm start
